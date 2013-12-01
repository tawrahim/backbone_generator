require "spec_helper"
require "backbone_generator/cli"

describe BackboneGenerator::CLI do

    before  do
        @cli = BackboneGenerator::CLI.new
    end

    subject { @cli }

    it { should be_an_instance_of(BackboneGenerator::CLI) }
    it { should be_kind_of(Thor) }

    it { should respond_to(:new) }
    it { should respond_to(:model) }
    it { should respond_to(:view) }
    it { should respond_to(:route) }
    it { should respond_to(:collection) }
    it { should respond_to(:utility) }
    it { should respond_to(:library) }
    it { should respond_to(:template) }
    it { should respond_to(:test) }

    describe "#new" do
       it "should accept :app_name as a parameter" do
           expect { @cli.new(:app_name) }.to_not raise_error
       end

       it "should not accept two args" do
           expect { @cli.new(:foo, :bar) }.to raise_error
       end
    end
end
