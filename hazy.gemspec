Gem::Specification.new do |gem|
  gem.name = 'hazy'
  gem.version = '0.0.1pre'
  gem.date = '2017-08-09'
  gem.summary = 'hazy'
  gem.description = 'Client library for OpenStack http://openstack.org'
  gem.authors = [ 'Sean Handley' ]
  gem.email = 'sean.handley@gmail.com'
  gem.files = `git ls-files`.split("\n")
  gem.homepage = 'https://github.com/datacentred/misty'
  gem.license = 'BSD-3-Clause'
  
  gem.required_ruby_version = '> 2.0.0'
  
  # Runtime Dependencies
  gem.add_runtime_dependency 'misty', '~> 0.7.2'
  
  # Development Dependencies
  gem.add_development_dependency 'bundler',    '~> 1.10'
  gem.add_development_dependency 'rake',       '~> 10.0'
  gem.add_development_dependency 'minitest',   '~> 5.10'
  gem.add_development_dependency 'webmock',    '~> 1.24'
  gem.add_development_dependency 'vcr',        '~> 3.0'
  gem.add_development_dependency 'pry-byebug', '~> 3.4'
end
