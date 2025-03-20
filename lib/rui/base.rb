# frozen_string_literal: true

class RUI::Base < Phlex::HTML
  def initialize(**attrs, &)
    @attrs = attrs
    super(&)
  end
end
