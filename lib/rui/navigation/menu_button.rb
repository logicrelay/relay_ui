# frozen_string_literal: true

class RUI::Navigation::MenuButton < RUI::Base
  def view_template
    render RUI::Buttons::Outline.new(icon: "menu", data: { action: "navigation#toggle", class: "lg:hidden" })
  end
end
