# Rack::CookieRewrite

This is a Rack middleware to add extra headers which behave like the Cookie and
Set-Cookie headers.

This simple middleware sets anything in the X-#{prefix}-Cookie header to
Cookie, and in the response will copy anything in Set-Cookie to
X-#{prefix}-Set-Cookie. This can be useful to enable session management where
an HTML client is accessing your API, which doesn't fully support cookies. We
have found this to be the case in some Smart TV web applications, and in mobile
apps written using frameworks such as Cordova

## Installation

Add this line to your application's Gemfile:

    gem 'rack-cookie_rewrite'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rack-cookie_rewrite

## Usage

In your config.ru, or where ever else you set up your Rack environment, add the
following lines:

    require 'rack/cookie_rewrite'
    use Rack::CookieRewrite, 'MSP'

Then use cookies in your Rack application as normal.

In your client application, you can then use X-MSP-Cookie and X-MSP-Set-Cookie
in lieu of normal Cookie commands. This means you will have to manually read
and set these headers if you are sending requests that expect and set cookies.


## Contributing

1. Fork it ( https://github.com/[my-github-username]/rack-cookie_rewrite/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
