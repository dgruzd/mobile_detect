require 'mobile_detect'

describe "Test iphone user_agent" do
  it 'return mobile and device' do
    md = MobileDetect.new('iphone mobile')
    md.mobile?.should be true
    md.tablet?.should be false
    md.device.should eq 'iPhone'
  end
end


describe "Test ipad user_agent" do
  it 'return mobile and device' do
    md = MobileDetect.new('ipad mobile')
    md.mobile?.should be false
    md.tablet?.should be true
    md.device.should eq 'iPad'
  end
end
