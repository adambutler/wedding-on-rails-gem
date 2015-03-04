# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','wedding_on_rails','version.rb'])
spec = Gem::Specification.new do |s|
  s.name = 'wedding_on_rails'
  s.version = WeddingOnRails::VERSION
  s.author = 'Adam Butler'
  s.email = 'adam@lab.io'
  s.homepage = 'http://lab.io'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A gem for to RSVP to my wedding'
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','wedding_on_rails.rdoc']
  s.rdoc_options << '--title' << 'wedding_on_rails' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'wedding_on_rails'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.13.0')
  s.add_runtime_dependency('commander','4.3.0')
end
