require "spec_helper"
require "backbone_generator/cli"

describe BackboneGenerator::CLI do

    before  do
        @cli = BackboneGenerator::CLI.new
    end

    subject { @cli }

    it { should respond_to(:new) }
    it { should respond_to(:model) }
    it { should respond_to(:view) }
    it { should respond_to(:route) }
    it { should respond_to(:collection) }
    it { should respond_to(:utility) }
    it { should respond_to(:library) }

    it { should be_an_instance_of(BackboneGenerator::CLI) }
    it { should be_kind_of(Thor) }
    
    it { should_receive(:new).with(:app_name) } 
    
end
