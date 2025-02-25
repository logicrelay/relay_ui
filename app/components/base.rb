# frozen_string_literal: true

class Components::Base < Phlex::HTML
  include Components
  include TablerIconsRuby::Helper
  # Include any helpers you want to be available across all components
  include Phlex::Rails::Helpers::Routes

  register_output_helper :tabler_icon

  if Rails.env.development?
    def before_template
      comment { "Before #{self.class.name}" }
      super
    end
  end
end
