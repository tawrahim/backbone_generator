# Namespace for all the classess
# @since 0.0.3
module BackboneGenerator

    # Abstract base class for generating
    # utility A.K.A copying template
    # @author Tawheed Abdul-Raheem
    class UtilityGenerator

        class << self
            def create_utility utility_name
                app_name  = BackboneGenerator.option_details[:app_name] || File.basename(Dir.getwd).chomp("/")
                if BackboneGenerator.option_details[:app_name]
                    dir_path = File.join(Dir.getwd, app_name)
                else
                    dir_path = File.join(Dir.getwd)
                end
                utility_hash = {
                    :app_name  => app_name,
                    :utility_name => utility_name.capitalize
                }
                template_path = File.expand_path(File.dirname(__FILE__)) + "/template/Utility.tt"
                target_path = "/js/utilities/" +  utility_hash[:app_name] + "/" + utility_name.capitalize + ".js"
                if File.exist? dir_path + target_path
                    print "error ".red
                    puts "View with the name specified already exists"
                else
                    BackboneGenerator.compile_and_copy(template_path, dir_path + target_path, utility_hash)
                    print "created ".green
                    puts  app_name.downcase + target_path
                end
            end
        end
    end
end
