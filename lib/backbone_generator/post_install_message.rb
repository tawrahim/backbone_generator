module BackboneGenerator
  class << self
    def post_install_message
      footer = <<'EOS'

======== Release notes for BackboneGenerator ===========

Thank you very much for downloading the backbone_generator
gem. I would like to hear your feedback on possible bugs
and also potential features that you would like to see in
the next release!

Happy Coding :-)
- Tawheed 

==========================================================

EOS
    end
  end
end
