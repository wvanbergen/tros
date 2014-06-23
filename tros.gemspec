# -*- encoding: utf-8 -*-

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tros/version'

Gem::Specification.new do |s|
  s.name    = 'tros'

  # Do not change the version and date fields by hand. This will be done
  # automatically by the gem release script.
  s.version = Tros::VERSION

  s.summary     = "This is a fork of the official avro gem."
  s.description = <<-EOT
    This fork of the official Avro gem exists to fix some specific issues, that
    cannot wait for a release of the full AVRO suite.
  EOT

  s.authors  = ['Willem van Bergen']
  s.email    = ['willem@railsdoctors.com']
  s.homepage = 'http://avro.apache.org'
  s.license  = 'Apache-2.0'

  s.add_development_dependency('rake')
  s.add_development_dependency('minitest', '~> 5')

  s.rdoc_options << '--title' << s.name << '--main' << 'README.rdoc' << '--line-numbers' << '--inline-source'

  s.files = `git ls-files`.split($/)
  s.test_files = s.files.grep(%r{^(test|spec|features)/})
end
