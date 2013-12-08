# Namespace for all the classess
# @since 0.0.3
module BackboneGenerator

    # Abstract base class for generating
    # models A.K.A copying template
    # @author Tawheed Abdul-Raheem
    class ModelGenerator

        class << self
            def create_model model_name
                path = File.expand_path(File.dirname(__FILE__))
                target_path = "js/models/"
                template_path = path + "/template/js/models/"

                if File.exist? target_path + model_name
                    print "error ".red
                    puts "Collection with the name specified already exists"
                else
                    print "created ".green
                    puts  target_path + model_name
                end
            end
        end
    end
end
