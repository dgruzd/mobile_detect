# MobileDetect

Mobile_Detect is a lightweight gem for detecting mobile devices. It uses the user-agent string combined with specific HTTP headers to detect the mobile environment.

## Installation

Add this line to your application's Gemfile:

    gem 'mobile_detect'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mobile_detect

## Usage

    detect = MobileDetect.new(request.user_agent, request.headers)
you can run that without second argument, but then gem cannot get device from client headers

    detect.tablet?
    
=> true

    detect.mobile?
    
=> false

    detect.device
    
=> "iPad"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
