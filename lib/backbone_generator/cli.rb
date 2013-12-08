# Namespace for all the classess
# @since 0.0.3
module BackboneGenerator

    # Abstract base class for CLI utilities
    # 
    # @author Tawheed Abdul-Raheem
    # @abstract
    # @since 0.0.3
    class CLI < Thor

        private
        def isvalid?
            if File.exists? ".BACKBONE_GENERATOR_APP"
                return true
            else
                print "error ".red
                puts "This command must be excuted in the root level of your app"
                return false
            end
        end

        public
        desc "new app_name", "Create a new backbone.js application named app_name"
        def new app_name
            if File.exists? app_name
                print "error ".red
                puts "A folder with the name " + app_name + " already exists"
            else
                BackboneGenerator::NewGenerator.new app_name 
            end
        end

        desc "model model_name", "Create a new backbone.js model named model_name "
        def model model_name
            BackboneGenerator::ModelGenerator.create_model(model_name) unless !isvalid?
        end

        desc "view view_name", "Create a new backbone.js view named view_name"
        def view view_name
            BackboneGenerator::ViewGenerator.create_view(view_name) unless !isvalid?
        end

        desc "route route_name", "Create a new backbone.js route named route_name"
        def route route_name
            BackboneGenerator::RouteGenerator.create_route(route_name) unless !isvalid?
        end

        desc " collection collection_name", "Create a new backbone.js collection named collection_name"	
        def collection collection_name
            BackboneGenerator::CollectionGenerator.create_collection(collection_name) unless !isvalid?
        end

        desc "utility utility_name", "Create a new backbone.js utility  named utility_name"
        def utility utility_name
            BackboneGenerator::UtilityGenerator.create_utility(utility_name) unless !isvalid?
        end

        desc "template template_name", "Create a template associated with a view"
        def template template_name
            BackboneGenerator::TemplateGenerator.create_template(template_name) unless !isvalid?
        end

        desc "library library_name", "Create a new backbone.js library named library_name"
        def library library_name
            BackboneGenerator::LibraryGenerator.fetch_library(library_name) unless !isvalid?
        end

        desc "test test_name", "Create a new jasmine test"
        def test test_name
            BackboneGenerator::TestGenerator.create_test(test_name) unless !isvalid?
        end

        desc "server", "Start a server, it defaults to port 5000 or you can pass a second argumnent for the port"
        def server(port=5000)
            BackboneGenerator.start_server(port) unless !isvalid?
        end
    end
end
