# frozen_string_literal: true

require_relative "lib/relay_ui/version"

Gem::Specification.new do |spec|
  spec.name = "relay_ui"
  spec.version = RelayUi::VERSION
  spec.authors = [ "logicrelay" ]
  spec.email = [ "hello@logicrelay.com" ]
  spec.homepage = "https://www.relayui.com"
  spec.summary = "A delightfully opinionated UI kit for Rails apps."
  spec.description = <<~STRING
    RelayUI is an opinionated UI kit for Rails applications, leveraging Phlex and TailwindCSS to provide a robust and cohesive design system, particularly suited for B2B backend interfaces.
  STRING
  spec.license = "MIT"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/logicrelay/relay_ui"
  spec.metadata["changelog_uri"] = "https://github.com/logicrelay/relay_ui/blob/main/CHANGELOG.md"
  # spec.metadata["allowed_push_host"] = ""

  spec.files = Dir.glob("lib/**/*") +
            Dir.glob("app/**/*") +
            Dir.glob("vendor/**/*") +
            %w[tailwind.config.js package.json Rakefile]

  spec.add_dependency "phlex"
  spec.add_dependency "tabler_icons_ruby"
  spec.add_development_dependency "rake"
end
