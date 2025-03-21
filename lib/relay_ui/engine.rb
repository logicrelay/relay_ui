# frozen_string_literal: true

module RUI
  if defined?(Rails)
    class Engine < ::Rails::Engine
      isolate_namespace RUI

      initializer "relay_ui.autoload.components" do
        Rails.autoloaders.main.push_dir(
          "#{Gem::Specification.find_by_name('relay_ui').gem_dir}/lib/rui",
          namespace: RUI
        )
      end
    end
  end
end
