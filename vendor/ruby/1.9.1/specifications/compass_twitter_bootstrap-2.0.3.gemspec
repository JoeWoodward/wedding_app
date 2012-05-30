# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "compass_twitter_bootstrap"
  s.version = "2.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Vincent"]
  s.date = "2012-05-08"
  s.description = "Compass/SCSS version of the twitter bootstrap"
  s.email = ["vrwaller@gmail.com"]
  s.homepage = "https://github.com/vwall/compass-twitter-bootstrap"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "Compass Twitter Bootstrap"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<compass>, [">= 0"])
    else
      s.add_dependency(%q<compass>, [">= 0"])
    end
  else
    s.add_dependency(%q<compass>, [">= 0"])
  end
end
