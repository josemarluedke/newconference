version = File.read(File.expand_path('../../VERSION',__FILE__)).strip

Gem::Specification.new do |s|
  s.name        = 'conference-core'
  s.version     = version
  s.authors     = ['Josemar Davi Luedke']
  s.email       = ['josemarluedke@gmail.com']
  s.homepage    = 'http://github.com/josemarluedke/conference'
  s.summary     = 'The bare bones necessary for Conference.'
  s.description = 'The bare bones necessary for Conference.'

  s.files       = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE']
  s.require_path = 'lib'

  s.add_dependency 'rails', '~> 4.0.0.rc1'
  s.add_dependency 'pg'
  s.add_dependency 'foreigner'

  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'machinist'
end
