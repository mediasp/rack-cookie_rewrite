# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'rack-cookie_rewrite'
  spec.version       = '0.0.1'
  spec.authors       = ['Tom Chipchase']
  spec.email         = ['tom@mediasp.com']

  spec.summary       = %q{Rack middleware to add extra headers which behave
like the Cookie and Set-Cookie headers}

  spec.description   = %q{This simple middleware sets anything in the
X-#{prefix}-Cookie header to Cookie, and in the response will copy anything in
Set-Cookie to X-#{prefix}-Set-Cookie. This can be useful to enable session
management where an HTML client is accessing your API, which doesn't fully
support cookies. We have found this to be the case in some Smart TV web
applications, and in mobile apps written using frameworks such as Cordova}

  spec.homepage      = 'https://github.com/mediasp/rack-cookie_rewrite.git'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)\//)
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'bump'
end
