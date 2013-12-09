# Namespace for all the classess
# @since 0.0.3
module BackboneGenerator

    # Abstract base class for generating
    # routes A.K.A copying template
    # @author Tawheed Abdul-Raheem
    class RouteGenerator

        class << self
            def create_route route_name
                app_name  = BackboneGenerator.option_details[:app_name] || File.basename(Dir.getwd).chomp("/")
                if BackboneGenerator.option_details[:app_name]
                    dir_path = File.join(Dir.getwd, app_name)
                else
                    dir_path = File.join(Dir.getwd)
                end
                template_path = File.expand_path(File.dirname(__FILE__)) + "/template/Routes.tt"
                target_path = "/js/routes/" + route_name + ".Route.js"
                route_hash = {
                    :app_name  => app_name.slice(0,1).capitalize + app_name.slice(1..-1),
                    :route_name => route_name.slice(0,1).capitalize + route_name.slice(1..-1),
                }

                if File.exists? dir_path + target_path
                    print "error ".red
                    puts "Route with the name specified already exists"
                else
                    BackboneGenerator.compile_and_copy(template_path, dir_path + target_path, route_hash)
                    print "created ".green
                    puts  route_hash[:app_name] + target_path
                end
            end
        end
    end
end
