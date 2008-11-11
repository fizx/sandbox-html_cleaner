Gem::Specification.new do |s|
  s.name     = "html_cleaner"
  s.version  = "0.1.1"
  s.summary  = "Makes HTML human-readable"
  s.has_rdoc = false
  s.files    = ["README", "lib/html_cleaner.rb", "lib/indent.xslt"]
  s.add_dependency("libxslt-ruby", ["> 0.0.0"])
  s.add_dependency("libxml-ruby", ["> 0.0.0"])
end