specroot = File.join(File.dirname(__FILE__), "..")
require File.join(specroot, "spec_helper")

Rango.import("controller")

describe Rango::Controller do
  before(:each) do
    @controller = Factory.controller
  end

  it "should respond to request" do
    @controller.should respond_to(:request)
  end
  
  it "should respond to params" do
    @controller.should respond_to(:params)
  end
  
  it "should have logger" do
    @controller.should respond_to(:logger)
    @controller.logger.should eql(Project.logger)
  end
end