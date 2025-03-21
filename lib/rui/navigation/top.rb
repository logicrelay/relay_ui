# frozen_string_literal: true

class RUI::Navigation::Top < RUI::Base
  def view_template(&)
    div(class: "fixed top-0 left-0 right-0 bg-white flex flex-col z-50") do
      section(class: "flex flex-row items-center justify-between gap-3 border-b border-zinc-300 p-3 lg:px-10", &)
      section(class: "lg:hidden p-3 border-b border-zinc-300") do
        render RUI::Buttons::Ghost.new(
          icon: "menu",
          data: { action: "navigation#toggle" }
        )
      end
    end
  end

  def group(&)
    section(class: "flex flex-row items-center gap-3", &)
  end
end
