# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "roly-poly/version"

Gem::Specification.new do |s|
  s.name        = "roly-poly"
  s.version     = Roly::Poly::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ubiratan Pires Alberton (Bira)"]
  s.email       = ["u.alberton@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{A Ruby die roller for role-playing games}
  s.description = <<-DESCRIPTION

A die roller that can understand the notation used in most roleplaying games,
with some special sauce to handle D&D die rolls specifically.

The generic roller's code was based on a solution for one of the first Rubyquizzes.
DESCRIPTION

  s.rubyforge_project = "roly-poly"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_development_dependency("minitest")
end
