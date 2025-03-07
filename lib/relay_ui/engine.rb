# frozen_string_literal: true

module RelayUi
  class Engine < ::Rails::Engine
    isolate_namespace RelayUi

    initializer "relay_ui.assets.precompile" do |app|
      app.config.assets.paths << root.join("vendor", "assets", "stylesheets")
      app.config.assets.paths << root.join("vendor", "assets", "javascripts")
    end

    initializer "relay_ui.autoload.components" do
      Rails.autoloaders.main.push_dir(
        "#{Gem::Specification.find_by_name('relay_ui').gem_dir}/lib/components",
        namespace: RelayUi
      )
    end
  end
end
