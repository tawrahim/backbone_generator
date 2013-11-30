require 'thor'
require 'auxilliary'

module BackboneGenerator
    class	CLI < Thor

        desc "new app_name", "Create a new backbone.js application named app_name"
        def new app_name
        end

        desc "model model_name", "Create a new backbone.js model named model_name "
        def model model_name
            BackboneGenerator.inside_backbone_generator_app? ? puts "wrong" : puts "correct"
        end

        desc "view view_name", "Create a new backbone.js view named view_name"
        def view view_name
            BackboneGenerator.inside_backbone_generator_app? ? puts "wrong" : puts "correct"
        end

        desc "route route_name", "Create a new backbone.js route named route_name"
        def route route_name
            BackboneGenerator.inside_backbone_generator_app? ? puts "wrong" : puts "correct"
        end

        desc " collection collection_name", "Create a new backbone.js collection named collection_name"	
        def collection collection_name
            BackboneGenerator.inside_backbone_generator_app? ? puts "wrong" : puts "correct"
        end


        desc "utility utility_name", "Create a new backbone.js utility  named utility_name"
        def utility utility_name
            BackboneGenerator.inside_backbone_generator_app? ? puts "wrong" : puts "correct"
        end
        
        desc "template template_name", "Create a template associated with a view"
        def template template_name
            BackboneGenerator.inside_backbone_generator_app? ? puts "wrong" : puts "correct"
        end
        
        desc "library library_name", "Create a new backbone.js library named library_name"
        def library library_name
            BackboneGenerator.inside_backbone_generator_app? ? puts "wrong" : puts "correct"
        end

        desc "test test_name", "Create a new jasmine test"
        def test test_name
            BackboneGenerator.inside_backbone_generator_app? ? puts "wrong" : puts "correct"
        end

    end
end
