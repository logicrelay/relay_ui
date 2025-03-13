# frozen_string_literal: true

class RUI::Base < Phlex::HTML
  if defined?(Rails) && Rails.env.development?
    def before_template
      comment { "Before #{self.class.name}" }
      super
    end
  end
end
