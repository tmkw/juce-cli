require "shellwords"

module Juce
  class CLI
    def self.run(argv)
      # Normalize CLASSPATH (Windows ; → :)
      classpath = ENV["CLASSPATH"].to_s.gsub(";", ":")
      class_paths = classpath.split(":").reject(&:empty?)

      # Build EDN for -Sdeps
      paths_edn = class_paths.map { |cp| %("#{cp}") }.join(" ")

      deps_edn = %(
        {:deps {io.github.tmkw/juce {:mvn/version "0.2.2"}}
         :paths [#{paths_edn}]}
      ).strip

      # Build command line
      cmd = "clojure -Sdeps '#{deps_edn}' -M -m juce.cli #{argv.shelljoin}"

      # puts cmd # for debug

      # Execute
      system(cmd)
    end
  end
end

