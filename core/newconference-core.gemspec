version = File.read(File.expand_path('../../VERSION',__FILE__)).strip

Gem::Specification.new do |s|
  s.name        = 'newconference-core'
  s.version     = version
  s.authors     = ['Josemar Davi Luedke']
  s.email       = ['josemarluedke@gmail.com']
  s.homepage    = 'http://github.com/josemarluedke/newconference'
  s.summary     = 'Newconference helps you create a website for you conference.'
  s.description = 'This is the core for newconference gem. Newconference helps you create a website for you conference.'

  s.files       = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE']
  s.require_path = 'lib'

  s.add_dependency 'rails', '~> 4.0.0'
  s.add_dependency 'pg'
  s.add_dependency 'foreigner'
  s.add_dependency 'carrierwave', '~> 0.8.0'
  s.add_dependency 'rmagick'
  s.add_dependency 'fog'

  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'machinist'
end
