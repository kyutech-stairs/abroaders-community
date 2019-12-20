# -*- encoding: utf-8 -*-
# stub: plupload-rails 1.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "plupload-rails".freeze
  s.version = "1.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Corin Langosch".freeze]
  s.date = "2014-02-08"
  s.description = "This gem integrates Plupload 2.1.1 with the Rails asset pipeline.".freeze
  s.email = ["info@corinlangosch.com".freeze]
  s.homepage = "https://github.com/gucki/plupload-rails".freeze
  s.licenses = ["MIT".freeze, "GPL-2".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Integration of Plupload 2.1.1 with the Rails asset pipeline".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, [">= 3.1"])
    else
      s.add_dependency(%q<rails>.freeze, [">= 3.1"])
    end
  else
    s.add_dependency(%q<rails>.freeze, [">= 3.1"])
  end
end
