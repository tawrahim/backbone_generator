require "erb"
# Namespace for all the classess
# @since 0.0.3
module BackboneGenerator

  class << self

      # This code is dummed down version of template_method in the bundler
      # gem. Original version can be found
      # @see https://github.com/bundler/bundler/blob/master/lib/bundler/vendor/thor/actions/file_manipulation.rb
      # God Bless all the great and awesome people who brought us open source
      # God Bless all the ruby developers out there!
      def compile_and_copy(source_file, *args)
          config = args.last.is_a?(Hash) ? args.pop : {}
          destination = args.first
          context = instance_eval('binding')
          content = ERB.new(::File.binread(source_file)).result(context)
          open(destination, 'w') { |f| f << content }
      end

  end
end
