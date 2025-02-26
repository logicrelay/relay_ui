# frozen_string_literal: true

module RUI
  extend Phlex::Kit
end

Rails.autoloaders.main.push_dir(
  "#{Gem::Specification.find_by_name('relay_ui').gem_dir}/app/components", namespace: RUI
)
