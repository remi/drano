spec = Gem::Specification.new do |s|
  s.name         = "drano"
  s.version      = "0.1"
  s.platform     = Gem::Platform::RUBY
  s.authors      = "Rémi Prévost"
  s.email        = "remi@exomel.com"
  s.homepage     = "http://github.com/remiprev/drano"
  s.summary      = "Clear SQS queues"
  s.description  = ""
  s.files        = Dir["lib/**/*.rb", "README.mkd", "LICENSE", "bin/*"]
  s.require_path = "lib"
  s.executables << "drano"
  s.add_dependency "aws-sdk", ">= 1.0.5"
end
