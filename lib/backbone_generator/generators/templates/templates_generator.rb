# Namespace for all the classess
# @since 0.0.3
module BackboneGenerator

    # Abstract base class for generating
    # utility A.K.A copying template
    # @author Tawheed Abdul-Raheem
    class TemplateGenerator

        class << self
            def create_template template_name
                path = File.expand_path(File.dirname(__FILE__))
                target_path = "js/templates/"
                template_path = path + "/template/js/templates/"

                if File.exist? target_path + template_name
                    print "error ".red
                    puts "Template with the name specified already exists"
                else
                    print "created ".green
                    puts  target_path + template_name
                end
            end
        end
    end
end
