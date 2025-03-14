# frozen_string_literal: true

class RUI::Base < Phlex::HTML
  include Components
  include Phlex::Rails::Helpers::Routes

  if Rails.env.development?
    def before_template
      comment { "Before #{self.class.name}" }
      super
    end
  end
end
