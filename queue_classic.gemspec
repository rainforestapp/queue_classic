#encoding: UTF-8
Gem::Specification.new do |s|
  s.name          = "queue_classic"
  s.email         = "r@32k.io"
  s.version       = "3.1.0"
  s.description   = "queue_classic is a queueing library for Ruby apps. (Rails, Sinatra, Etc...) queue_classic features asynchronous job polling, database maintained locks and no ridiculous dependencies. As a matter of fact, queue_classic only requires pg."
  s.summary       = "Simple, efficient worker queue for Ruby & PostgreSQL."
  s.authors       = ["Ryan Smith (♠ ace hacker)"]
  s.homepage      = "http://github.com/QueueClassic/queue_classic"
  s.license       = "MIT"

  files = []
  files << "README.md"
  files << Dir["sql/**/*.sql"]
  files << Dir["{lib,test}/**/*.rb"]
  s.files = files
  s.test_files = s.files.select {|path| path =~ /^test\/.*_test.rb/}

  s.require_paths = %w[lib]

  s.add_dependency "pg", ">= 0.17", "< 1.3"
end
