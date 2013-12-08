# Namespace for all the classess
# @since 0.0.3
module BackboneGenerator

    # Abstract base class for generating
    # collection A.K.A copying template
    # @author Tawheed Abdul-Raheem
    class CollectionGenerator

        class << self
            def create_collection collection_name
                path = File.expand_path(File.dirname(__FILE__))
                target_path = "js/collections/"
                template_path = path + "/template/js/collections/"

                if File.exist? target_path + collection_name
                    print "error ".red
                    puts "Collection with the name specified already exists"
                else
                    print "created ".green
                    puts  target_path + collection_name
                end
            end
        end
    end
end
