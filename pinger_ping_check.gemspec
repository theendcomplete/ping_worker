# frozen_string_literal: true

require_relative "lib/pinger_ping_check/version"

Gem::Specification.new do |spec|
  spec.name          = "pinger_ping_check"
  spec.version       = PingerPingCheck::VERSION
  spec.authors       = ["Nikalay Gromihaylo"]
  spec.email         = ["nickonizator@gmail.com"]

  spec.summary       = "Ping worker fot github.com/theendcomplete/pinger"
  spec.homepage      = "https://github.com/theendcomplete/ping_worker"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "nikkie.ru"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/theendcomplete/ping_worker"
  spec.metadata["changelog_uri"] = "https://github.com/theendcomplete/ping_worker/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "redis"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
