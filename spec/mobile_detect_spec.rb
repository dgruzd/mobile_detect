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



describe "Test os detection" do
  it 'ios test' do
    md = MobileDetect.new('ipad mobile')
    md.os.should == 'iOS'
  end
  it 'android test' do
    md = MobileDetect.new('android tablet')
    md.os.should == 'AndroidOS'
  end
end


describe "Test bot detection" do
  it 'googlebot test' do
    md = MobileDetect.new('Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)')
    md.bot.should == 'Google'
  end
  it 'mail.ru test' do
    md = MobileDetect.new('Mozilla/5.0 (compatible; Linux x86_64; Mail.RU_Bot/2.0; +http://go.mail.ru/help/robots)')
    md.bot.should == 'Mail.ru'
  end
end
