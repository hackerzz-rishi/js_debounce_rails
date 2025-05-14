# frozen_string_literal: true

require_relative "lib/js_debounce_rails/version"

Gem::Specification.new do |spec|
  spec.name          = "js_debounce_rails"
  spec.version       = JsDebounceRails::VERSION
  spec.authors       = ["hackerzz-rishi"]
  spec.email         = ["hackerzzrishi@gmail.com"]

  spec.summary       = "Easily integrate JavaScript debouncing in Ruby on Rails apps."
  spec.description   = "js_debounce_rails provides a lightweight JavaScript debounce function packaged as a Rails engine, enabling easy use in views and forms for optimizing user input handling."
  spec.homepage      = "https://github.com/hackerzz-rishi/js_debounce_rails"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"]     = spec.homepage
  spec.metadata["source_code_uri"]  = "https://github.com/hackerzz-rishi/js_debounce_rails"
  spec.metadata["changelog_uri"]    = "https://github.com/hackerzz-rishi/js_debounce_rails/blob/main/CHANGELOG.md"

  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == File.basename(__FILE__)) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 6.0"
end
