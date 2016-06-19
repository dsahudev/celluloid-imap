# -*- encoding: utf-8 -*-
require File.expand_path("../culture/sync", __FILE__)

Gem::Specification.new do |gem|
  gem.name         = 'celluloid-imap'
  gem.version      = Celluloid::IMAP::VERSION
  gem.platform     = Gem::Platform::RUBY
  gem.summary      = "Celluloid::IO-based IMAP Server"
  gem.description  = 'A small, fast, evented, actor-based, highly customizable Ruby IMAP server.'
  gem.licenses     = ['MIT']

  gem.authors      = ["Donovan Keme"]
  gem.email        = ['code@extremist.digital']
  gem.homepage     = 'https://github.com/celluloid/celluloid-imap'

  gem.files        = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|examples|spec|features)/}) }
  gem.require_path = 'lib'

  gem.add_runtime_dependency 'celluloid-io', '>= 0.17.3'

  Celluloid::Sync::Gemspec[gem]
end
