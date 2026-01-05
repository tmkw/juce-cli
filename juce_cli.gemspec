Gem::Specification.new do |s|
  s.name        = "juce-cli"
  s.version     = File.read([__dir__, 'VERSION'].join('/')).strip
  s.summary     = "Command-line interface for the juce template engine"
  s.description = "A Ruby-based CLI wrapper for the juce Clojure template engine."
  s.authors     = ["Takanobu Maekawa"]
  s.files       = Dir['lib/**/*.rb', 'lib/juce/JUCE_VERSION', 'VERSION']
  s.homepage    = "https://github.com/tmkw/juce-cli"
  s.license     = 'BSD-2-Clause'
  s.required_ruby_version = '>= 3.3.4'
  s.requirements = 'Clojure 1.12.4 or higher'
  s.metadata = {
    "homepage_uri" => "https://github.com/tmkw/juce-cli"
  }
  s.bindir = 'bin'
  s.executables = ['juce']
end

