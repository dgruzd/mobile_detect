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

describe "Test tablet detection" do
  it 'test' do
    md = MobileDetect.new('Mozilla/5.0 (Linux; U; Android 2.2-20111223; ru-ru; Inch OS Build/FRF91) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1')
    md.tablet?.should == true
  end
end

describe "Test mobile detection" do
  it 'Test ZTE' do
    md = MobileDetect.new('(Linux; Android 4.0.4; ZTE V880E Build/IMM76D) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.169 Mobile Safari/537.22')
    md.mobile?.should == true
  end

end
