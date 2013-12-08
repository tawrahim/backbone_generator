# Namespace for all the classess
# @since 0.0.3
module BackboneGenerator

    # Abstract base class for generating
    # views A.K.A copying template
    # @author Tawheed Abdul-Raheem
    class ModelGenerator

        class << self
            def create_view view_name
                path = File.expand_path(File.dirname(__FILE__))
                target_path = "js/views/"
                template_path = path + "/template/js/views/"

                if File.exist? target_path + view_name
                    print "error ".red
                    puts "View with the name specified already exists"
                else
                    print "created ".green
                    puts  target_path + view_name
                end
            end
        end
    end
end
