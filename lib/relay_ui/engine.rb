# frozen_string_literal: true

require "rui/forms/form_builder"

module RUI
  if defined?(Rails)
    class Engine < ::Rails::Engine
      isolate_namespace RUI

      initializer "relay_ui.set_default_form_builder" do |app|
        app.config.action_view.default_form_builder = RUI::Forms::FormBuilder
      end

      initializer "relay_ui.autoload.components" do
        Rails.autoloaders.main.push_dir(
          "#{Gem::Specification.find_by_name('relay_ui').gem_dir}/lib/rui",
          namespace: RUI
        )
      end
    end
  end
end
