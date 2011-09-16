spec = Gem::Specification.new do |s|
  s.name         = "drano"
  s.version      = "0.1"
  s.platform     = Gem::Platform::RUBY
  s.authors      = "Rémi Prévost"
  s.email        = "remi@exomel.com"
  s.homepage     = "http://github.com/remiprev/drano"
  s.summary      = "For the toughest clogged queues."
  s.description  = "Drano is a queue cleaner for SQS. It connects to a queue as a worker, and then prints each message. Nothing else."
  s.files        = Dir["lib/**/*.rb", "README.mkd", "LICENSE", "bin/*"]
  s.require_path = "lib"
  s.executables << "drano"
  s.add_dependency "aws-sdk", ">= 1.0.5"
end
