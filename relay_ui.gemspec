# frozen_string_literal: true

require_relative "lib/relay_ui/version"

Gem::Specification.new do |spec|
  spec.name = "relay_ui"
  spec.version = RUI::VERSION
  spec.required_ruby_version = ">= 3.0.0"
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
  spec.files = Dir.glob("lib/**/*.rb") +
            Dir.glob("dist/**/*.css") +
            %w[README.md LICENSE.txt]

  spec.add_dependency "phlex", "~> 2.1"
  spec.add_dependency "tabler_icons_ruby", "~> 3.11"
  spec.add_dependency "redcarpet", "~> 3.6"
  spec.add_dependency "rouge", "~> 4.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-livereload"
  spec.add_development_dependency "base64"
  spec.add_development_dependency "rubocop-rails-omakase"
end
