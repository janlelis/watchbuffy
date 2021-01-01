# -*- encoding: utf-8 -*-

require File.dirname(__FILE__) + "/lib/watchbuffy/version"

Gem::Specification.new do |gem|
  gem.name          = "watchbuffy"
  gem.version       = Watchbuffy::VERSION
  gem.summary       = "Picks a random Buffy episode"
  gem.description   = "Suggests a random Buffy or Angel episode to watch"
  gem.authors       = ["Jan Lelis"]
  gem.email         = ["hi@ruby.consulting"]
  gem.homepage      = "https://github.com/janlelis/watchbuffy"
  gem.license       = "MIT"

  gem.files         = Dir["{**/}{.*,*}"].select{ |path| File.file?(path) && path !~ /^pkg/ }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 2.0"

  gem.add_dependency "rationalist"
end
