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
                :app_name        => @app_name.capitalize,
                :app_path        => @target_path,
                :author          => git_user_name.empty? ? "TODO: Write your name" : git_user_name,
                :email           => git_user_email.empty? ? "TODO: Write your email address" : git_user_email,
            })
            BackboneGenerator.option_details.freeze
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

            js_files = ['/js/collections', '/js/models', '/js/views', '/js/templates', '/js/utilities', '/js/libs', '/js/routes']
            js_files.each do |file|
                FileUtils.mkdir_p @target_path + file
            end

            FileUtils.cp_r(Dir.glob(@template_path + '/js/libs/'), @target_path + '/js/libs/')

            css_img = ["/css", "/img"]
            css_img.each do |file|
                FileUtils.cp_r(Dir.glob(@template_path + file), @target_path)
            end

            # comments to display
            print "created ".green
            puts @app_name + "/css/main.css"
            print "created ".green
            puts @app_name + "/img/backbone.png"
        end

        def copy_compiled_files
            templates_hash = {
                "/README.tt"             => "/README.md",
                "/main.tt"               => "/js/main.js",
                "/views/Main.View.tt"    => "/js/views/Main.View.js"
            }
            templates_hash.each do |key, value|
                BackboneGenerator.compile_and_copy(@template_path + key, @target_path + value, BackboneGenerator.option_details)
                print "created ".green
                puts @app_name + value
            end

            BackboneGenerator::ViewGenerator.create_view("hello")
            BackboneGenerator::ModelGenerator.create_model("hello")
            BackboneGenerator::CollectionGenerator.create_collection("hello")
            BackboneGenerator::RouteGenerator.create_route(@app_name)
            BackboneGenerator::UtilityGenerator.create_utility(@app_name)
        end
    end
end
