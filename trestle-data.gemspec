$LOAD_PATH.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'trestle-data'
  s.version     = '0.0.1'
  s.date        = '2022-10-12'
  s.summary     = "Trestle Data"
  s.description = "This gem is for interacting with the Trestle API"
  s.authors     = ["Jonathan De Jong"]
  s.email       = ''
  s.files       =  Dir.glob("{lib,spec}/**/*") #["lib/trestle-data.rb"]
  s.require_paths = ['lib']
  s.homepage    = 'http://rubygems.org/gems/trestle-data'
  s.license     = 'MIT'
end