$:.push File.expand_path("../lib", __FILE__)
require 'spacis/version'

Gem::Specification.new do |s|
    s.name = "spacis"
    s.version = Spacis::Version
    s.platform = Gem::Platform::RUBY
    s.authors = ["Adam \"Arcath\" Laycock"]
    s.email = ["api@spacis.co.uk"]
    s.homepage = "http://api.spacis.co.uk"
    s.summary = "Provides ruby bindings for the SpaciS API"
    
    s.add_development_dependency "rspec"
    
    s.files         = `git ls-files`.split("\n")
    s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")   
    s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
    s.require_paths = ["lib"]
end
