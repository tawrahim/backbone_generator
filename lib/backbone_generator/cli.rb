require 'thor'
require 'backbone_generator/auxilliary'
require 'backbone_generator/generators/new/new_generator'

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
            if File.file? ".BACKBONE_GENERATOR_APP"
                return true
            else
                puts "This command must be excuted in the root level of your app"
                return false
            end
        end

        public
        desc "new app_name", "Create a new backbone.js application named app_name"
        def new app_name
            #@app_directory = Dir.getwd + "/" + app_name
            BackboneGenerator::NewGenerator.new app_name
        end

        desc "model model_name", "Create a new backbone.js model named model_name "
        def model model_name
            puts "creating a model" unless !isvalid?
        end

        desc "view view_name", "Create a new backbone.js view named view_name"
        def view view_name
            puts "creating a model" unless !isvalid?
        end

        desc "route route_name", "Create a new backbone.js route named route_name"
        def route route_name
            puts "creating a model" unless !isvalid?
        end

        desc " collection collection_name", "Create a new backbone.js collection named collection_name"	
        def collection collection_name
            puts "creating a model" unless !isvalid?
        end


        desc "utility utility_name", "Create a new backbone.js utility  named utility_name"
        def utility utility_name
            puts "creating a model" unless !isvalid?
        end

        desc "template template_name", "Create a template associated with a view"
        def template template_name
            puts "creating a model" unless !isvalid?
        end

        desc "library library_name", "Create a new backbone.js library named library_name"
        def library library_name
            puts "creating a model" unless !isvalid?
        end

        desc "test test_name", "Create a new jasmine test"
        def test test_name
            puts "creating a model" unless !isvalid?
        end

    end
end
