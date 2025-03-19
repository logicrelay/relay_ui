# frozen_string_literal: true

class RUI::Navigation::Top < RUI::Base
  def view_template
    section(class: "lg:hidden p-3 bg-zinc-100 border-zinc-300 border-y") do
      button(class: "hover:cursor-pointer hover:bg-zinc-200 p-1.5 rounded-lg", data: { action: "navigation#toggle" }) do
        div(class: "size-5") do
          render RUI::Icon.new("menu")
        end
      end
    end
  end
end
