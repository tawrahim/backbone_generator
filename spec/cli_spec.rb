require "spec_helper"
require "backbone_generator/cli"

describe BackboneGenerator::CLI do
    it { should respond_to(:new) }
    it { should respond_to(:model) }
    it { should respond_to(:view) }
    it { should respond_to(:route) }
    it { should respond_to(:collection) }
    it { should respond_to(:utility) }
    it { should respond_to(:library) }
end
