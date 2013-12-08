# Namespace for all the classess
# @since 0.0.3
module BackboneGenerator

    # Abstract base class for generating
    # routes A.K.A copying template
    # @author Tawheed Abdul-Raheem
    class RouteGenerator

        class << self
            def create_route route_name
                path = File.expand_path(File.dirname(__FILE__))
                target_path = "js/routes/"
                template_path = path + "/template/js/routes/"

                if File.exist? target_path + route_name
                    print "error ".red
                    puts "Route with the name specified already exists"
                else
                    print "created ".green
                    puts  target_path + route_name
                end
            end
        end
    end
end
