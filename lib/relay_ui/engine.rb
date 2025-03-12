# frozen_string_literal: true

module RUI
  class Engine < ::Rails::Engine
    isolate_namespace RUI

    initializer "relay_ui.assets.precompile" do |app|
      app.config.assets.paths << root.join("dist")
    end

    initializer "relay_ui.autoload.components" do
      Rails.autoloaders.main.push_dir(
        "#{Gem::Specification.find_by_name('relay_ui').gem_dir}/lib/rui",
        namespace: RUI
      )
    end
  end
end
