# Namespace for all the classess
# @since 0.0.3
module BackboneGenerator

    # Abstract base class for generating
    # collection A.K.A copying template
    # @author Tawheed Abdul-Raheem
    class CollectionGenerator

        class << self
            def create_collection collection_name
                app_name  = BackboneGenerator.option_details[:app_name] || File.basename(Dir.getwd).chomp("/")
                if BackboneGenerator.option_details[:app_name]
                    dir_path = File.join(Dir.getwd, app_name)
                else
                    dir_path = File.join(Dir.getwd)
                end
                template_path = File.expand_path(File.dirname(__FILE__)) + "/template/Collection.tt"
                target_path = "/js/collections/" + collection_name.capitalize + ".Collection.js"
                collection_hash = {
                    :app_name  => app_name.slice(0,1).capitalize + app_name.slice(1..-1),
                    :collection_name => collection_name.slice(0,1).capitalize + collection_name.slice(1..-1),
                }
                if File.exist? dir_path + target_path
                    print "error ".red
                    puts "Collection with the name specified already exists"
                else
                    BackboneGenerator.compile_and_copy(template_path, dir_path + target_path, collection_hash)
                    print "created ".green
                    puts  collection_hash[:app_name] + target_path
                end
            end
        end
    end
end
