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

  # spec.metadata["allowed_push_host"] = ""

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/logicrelay/relay_ui"
  spec.metadata["changelog_uri"] = "https://github.com/logicrelay/relay_ui/blob/main/CHANGELOG.md"


  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 8.0.0"
  spec.add_dependency "phlex-rails", "~> 2.0.0"
  spec.add_dependency "tabler_icons_ruby", "~> 3.11.0"
end
