# Namespace for all the classess
# @since 0.0.3
module BackboneGenerator

    # Abstract base class for generating a project
    # 
    # @author Tawheed Abdul-Raheem
    # @abstract
    # @since 0.0.3
    class NewGenerator 

        def initialize app_name
            app_name = app_name.chomp("/")
            target_path = File.join(Dir.getwd, name)
            # mkdir of app name 
            # copy from new/template to app name
            # copy model to app name
            # copy collection to app name
            # copy view to app name
            # copy template to app name
            # copy utility to app name
            # initialize git repo
            puts "Initializing git repo in #{target}"
            Dir.chdir(target) { `git init`; `git add .` }
        end
    end
end
