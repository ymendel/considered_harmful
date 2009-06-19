require File.dirname(__FILE__) + '/spec_helper'

setup_rails_environment

describe ActionController::Base do
  before :each do
    @controller = ActionController::Base.new
  end
  
  it "should understand goto" do
    @controller.should respond_to(:goto)
  end
  
  it 'should alias goto to redirect_to' do
    args = ['/some/path', {:status => :found}]
    @controller.expects(:redirect_to).with(*args)
    @controller.goto *args
  end
end
