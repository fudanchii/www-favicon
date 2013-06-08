lib = File.expand_path('./lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name      = "www-favicon"
  s.version   = "0.0.8"
  s.platform  = Gem::Platform::RUBY
  s.authors   = ["youpy", "fudanchii"]
  s.email     = ["youpy@buycheapviagraonlinenow.com", "fudanchii@genshiken-itb.org"]
  s.homepage  = "https://github.com/fudanchii/www-favicon"
  s.license   = 'MIT'
  s.summary   = "Find favicon from URL"
  s.description = "Given any URL, www-favicon will attempt to find the favicon"
 
  s.required_rubygems_version = ">= 1.3.6"
 
  s.add_development_dependency "rspec"
  s.add_development_dependency "fakeweb"

  s.add_runtime_dependency "nokogiri"
 
  s.files        = Dir.glob("{lib}/**/*") + %w(LICENSE README.rdoc ChangeLog)
  s.require_path = 'lib'
end
