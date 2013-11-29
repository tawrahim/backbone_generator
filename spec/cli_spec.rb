require "spec_helper"
require "backbone_generator/cli"

describe BackboneGenerator::CLI do

    before  do
        @cli = BackboneGenerator::CLI.new
    end

    it { should respond_to(:new) }
    it { should respond_to(:model) }
    it { should respond_to(:view) }
    it { should respond_to(:route) }
    it { should respond_to(:collection) }
    it { should respond_to(:utility) }
    it { should respond_to(:library) }

    describe "when new does not have an argument" do
    end
end
