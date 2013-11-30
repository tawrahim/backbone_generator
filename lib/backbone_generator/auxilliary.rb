module BackboneGenerator

  class << self

      def inside_backbone_generator_app?
          filename = '.BACKBONE_GENERATOR_APP'
          File.file? filename
      end
  end
end
