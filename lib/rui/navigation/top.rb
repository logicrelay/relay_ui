# frozen_string_literal: true

class RUI::Navigation::Top < RUI::Base
  def view_template
    section(class: "lg:hidden p-3 border-b border-zinc-300") do
      render RUI::Buttons::Ghost.new(
        icon: "menu",
        data: { action: "navigation#toggle" }
      )
    end
  end
end
