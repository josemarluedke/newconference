version = File.read(File.expand_path('../VERSION',__FILE__)).strip

Gem::Specification.new do |s|
  s.name                   = 'newconference'
  s.version                = version
  s.authors                = ['Josemar Davi Luedke']
  s.email                  = ['josemarluedke@gmail.com']
  s.homepage               = 'http://github.com/josemarluedke/newconference'
  s.summary                = 'Newconference helps you create a website for you conference.'
  s.description            = 'Newconference helps you create a website for you event/conference.'

  s.files                  = Dir['README.md', 'MIT-LICENSE', 'lib/**/*']
  s.require_path           = 'lib'
  s.required_ruby_version  = '>= 1.9.3'

  s.add_dependency 'newconference-core', version
end
