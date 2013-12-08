# Namespace for all the classess
# @since 0.0.3
module BackboneGenerator

    # Abstract base class for generating
    # utility A.K.A copying template
    # @author Tawheed Abdul-Raheem
    class UtilityGenerator

        class << self
            def create_utility utility_name
                path = File.expand_path(File.dirname(__FILE__))
                target_path = "js/utilities/"
                template_path = path + "/template/js/utilities/"

                if File.exist? target_path + utility_name
                    print "error ".red
                    puts "Collection with the name specified already exists"
                else
                    print "created ".green
                    puts  target_path + utility_name
                end
            end
        end
    end
end
