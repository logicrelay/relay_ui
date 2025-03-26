# frozen_string_literal: true

class RUI::Buttons::Primary < RUI::Buttons::Base
  # Style string public for use in forms
  STYLE = "bg-blue-700 hover:bg-blue-900 text-white border border-blue-700 hover:border-blue-900".freeze

  private

  def variant_classes = STYLE
end
