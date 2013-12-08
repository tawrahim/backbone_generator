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

            git_user_name = `git config user.name`.chomp
            git_user_email = `git config user.email`.chomp

            BackboneGenerator.option_details.merge!({
                :app_name        => @app_name,
                :author          => git_user_name.empty? ? "TODO: Write your name" : git_user_name,
                :email           => git_user_email.empty? ? "TODO: Write your email address" : git_user_email,
            })


            copy_static_files
            copy_compiled_files
            puts "Initializing git repo in " + Dir.getwd + "/" + app_name
            Dir.chdir(@target_path) { `git init`; `git add .` }
        end

        def copy_static_files
            dot_files = ["/.gitignore", "/.BACKBONE_GENERATOR_APP", "/index.html"]
            dot_files.each do |file|
                FileUtils.cp(@template_path + file, @target_path)
                print "created ".green
                puts @app_name + file
            end

            css_img = ["/css", "/img"]
            css_img.each do |file|
                FileUtils.cp_r(Dir.glob(@template_path + file), @target_path)
            end

            print "created ".green
            puts @app_name + "/css/main.css"
            print "created ".green
            puts @app_name + "img/backbone.png"

            js_files = ['/js/collections', '/js/models', '/js/views', '/js/templates'] 
            js_files.each do |file|
                FileUtils.mkdir_p @target_path + file
            end


        end

        def copy_compiled_files
            BackboneGenerator.compile_and_copy(@template_path + "/main.tt", @target_path + "/js/main.js")
        end
    end
end
