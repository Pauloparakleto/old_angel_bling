# frozen_string_literal: true

require_relative "lib/old_angel_bling/version"

Gem::Specification.new do |spec|
  spec.name = "old_angel_bling"
  spec.version = OldAngelBling::VERSION
  spec.authors = ["paulo-felipe"]
  spec.email = ["alparakleto@gmail.com"]

  spec.summary = "Write a short summary, because RubyGems requires one."
  # spec.description = "Write a longer description or delete this line."
  # spec.homepage = "Put your gem's website or public repo URL here."
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  # spec.metadata["allowed_push_host"] = "Set to your gem server 'https://example.com'"

  #  spec.metadata["homepage_uri"] = 'www.dd.co'
  # spec.metadata["source_code_uri"] = "Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_development_dependency "awesome_print"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "factory_bot"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"
  spec.add_dependency "faraday"
  spec.add_dependency "gyoku"
  spec.add_dependency "httparty"
  spec.add_dependency "json"
  spec.add_dependency "rails"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
