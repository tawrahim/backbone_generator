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
            @app_name = app_name.chomp("/")
            @target_path = File.join(Dir.getwd, @app_name)
            @template_path = File.expand_path(File.dirname(__FILE__)) + "/template"
            Dir.mkdir (@target_path)
            copy_static_files
            copy_compiled_files
            puts "Initializing git repo in " + Dir.getwd + "/" + app_name
            Dir.chdir(@target_path) { `git init`; `git add .` }
        end

        def copy_static_files
            # copy files that does not require processing
            FileUtils.cp_r(Dir.glob(@template_path + "/css"), @target_path)
            FileUtils.cp_r(Dir.glob(@template_path + "/img"), @target_path)
            js_files = ['/js/collections', '/js/models', '/js/views', '/js/templates'] 
            js_files.each do |file|
                FileUtils.mkdir_p @target_path + file
            end
            FileUtils.cp(@template_path + "/.gitignore", @target_path)
            FileUtils.cp(@template_path + "/.BACKBONE_GENERATOR_APP", @target_path)
            FileUtils.cp(@template_path + "/index.html", @target_path)
        end

        def copy_compiled_files
           BackboneGenerator.compile_and_copy(@template_path + "/main.tt", @target_path + "/js/main.js")
        end
    end
end
