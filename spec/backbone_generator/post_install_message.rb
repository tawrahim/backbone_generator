module BackboneGenerator
  class << self
    def post_install_message
      footer = <<'EOS'

==== Release notes for BackboneGenerator ====

This gem is NOT yet ready for prime. PLEASE DO NOT
USE this gem yet. We are working hard to make dependecy
management and boiler plate code generation in your
backbone.js apps seameless.

Tawheed and Mhd

=======================================

EOS
    end
  end
end
