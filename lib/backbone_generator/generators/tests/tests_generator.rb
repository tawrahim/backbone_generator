# Namespace for all the classess
# @since 0.0.3
module BackboneGenerator

    # Abstract base class for generating
    # tests A.K.A copying template
    # @author Tawheed Abdul-Raheem
    class TestGenerator

        class << self
            def create_test test_name
                print "NOTICE ".yellow
                puts "Will be implemented in the next Release"
            end
        end
    end
end
