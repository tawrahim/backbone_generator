require 'thor'

module BackboneGenerator
    class	CLI < Thor

        desc "new app_name", "Create a new backbone.js application named app_name"
        def new app_name
        end

        desc "model model_name", "Create a new backbone.js model named model_name "
        def model model_name
        end

        desc "view view_name", "Create a new backbone.js view named view_name"
        def view view_name
        end

        desc "route route_name", "Create a new backbone.js route named route_name"
        def route route_name
        end

        desc " collection collection_name", "Create a new backbone.js collection named collection_name"	
        def collection collection_name
        end


        desc "utility utility_name", "Create a new backbone.js utility  named utility_name"
        def utility utility_name
        end

        desc "library library_name", "Create a new backbone.js library named library_name"
        def library library_name
        end

    end
end
