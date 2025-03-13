# frozen_string_literal: true

class RUI::Slideout < RUI::Base
  def view_template
    turbo-frame(id: "slideout") do
      div(class: "rui:absolute rui:inset-0 rui:z-50", data: { controller: "slideout" }) do
        a(href: "#", class: "rui:cursor-default", data: { action: "slideout#hide" }) do
          div(id: "modal-curtain", class: "rui:w-screen rui:h-screen rui:bg-black rui:transition-opacity rui:opacity-75", data: { slideout_target: "curtain" })
        end
        div(class: "rui:right-0 rui:fixed rui:inset-y-0 rui:flex rui:max-w-1/2 rui:pointer-events-none") do
          div(class: "rui:w-screen rui:pointer-events-auto", data: { slideout_target: "slideout" }) do
            div(class: "rui:w-full rui:h-full rui:bg-white rui:shadow") do
              yield
            end
          end
        end
      end
    end
  end
end
