# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "crummy/version"

Gem::Specification.new do |s|
  s.name = "vinted-crummy"
  s.version = Crummy::VERSION
  s.platform    = Gem::Platform::RUBY
  s.licenses    = ['MIT']

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tomas Varneckas", "Zach Inglis", "Andrew Nesbitt"]
  s.summary = "Tasty breadcrumbs!"
  s.description = "Crummy is a simple and tasty way to add breadcrumbs to your Rails applications."
  s.email = "tomas.varneckas@vinted.com"
  s.extra_rdoc_files = ["README.md"]

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")

  s.homepage = "http://github.com/vinted/crummy"
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.8}

  s.add_development_dependency 'rake'
  s.add_development_dependency 'activesupport'
  s.add_development_dependency 'actionpack'
  s.add_development_dependency 'appraisal'
  s.add_development_dependency 'test-unit'
end
