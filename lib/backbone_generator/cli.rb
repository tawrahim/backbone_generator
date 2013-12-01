require 'thor'
require 'backbone_generator/auxilliary'

module BackboneGenerator
    class	CLI < Thor

        private
        # isvalid? is invked before cn action
        # check if procedding with the action is vaild, if not
        # print a message telling what is wrong
        # @author Mhd Tahawi 
        def isvalid?
            # This line is neccesary because if the user invokes
            # the other method before invoking init it will blow up
            @app_directory ||= ""
            if @app_directory.empty?
               puts "create an app first"
               false
            else
                puts "valid"
                true
            end
        end

        public
        desc "new app_name", "Create a new backbone.js application named app_name"
        def new app_name
            # assign current directory the dir of the application
            @app_directory = File.expand_path(app_name, __FILE__)
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
