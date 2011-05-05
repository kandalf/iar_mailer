# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ar_mailer/version"

Gem::Specification.new do |s|
  s.name        = "iar_mailer"
  s.version     = ArMailer::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Eric Hodel", "Adam Meehan" "Leonardo Mateo"]
  s.email       = ["leonardomateo@gmail.com"]
  s.homepage    = "http://github.com/kandalf/iar_mailer"
  s.summary     = %q{A two-phase delivery agent for ActionMailer (Fork from adzap/ar_mailer)}
  s.description = %q{Defer email sending by storing it on a database table. ar_mailer allows you to store messages into the database for later delivery by a separate process, ar_sendmail.}

  s.rubyforge_project = %q{seattlerb}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.extra_rdoc_files = ["History.txt", "LICENSE.txt", "README.rdoc"]
  s.require_paths = ["lib"]
  s.add_development_dependency "minitest", ">= 1.5.0"
  s.add_development_dependency "mocha", ">= 0.9.8"
end
