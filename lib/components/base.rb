# frozen_string_literal: true

class RelayUi::Base < Phlex::HTML
  include Components
  include Phlex::Rails::Helpers::Routes

  register_value_helper :request

  if Rails.env.development?
    def before_template
      comment { "Before #{self.class.name}" }
      super
    end
  end
end
