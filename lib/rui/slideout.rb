# frozen_string_literal: true

class RUI::Slideout < RUI::Base
  include Phlex::Rails::Helpers::TurboFrameTag

  def view_template(&)
    turbo_frame_tag "slideout" do
      div(class: "absolute inset-0 z-50", data: { controller: "slideout" }) do
        a(href: "#", class: "cursor-default", data: { action: "slideout#hide" }) do
          div(id: "modal-curtain", class: "w-screen h-screen bg-black transition-opacity opacity-75", data: { slideout_target: "curtain" })
        end
        div(class: "fixed right-0 inset-y-0 w-1/2 h-full bg-white shadow flex flex-col pointer-events-auto", data: { slideout_target: "slideout" }) do
          div class: "flex-grow flex flex-col gap-3 overflow-y-scroll p-10" do
            div(class: "flex flex-row justify-between items-center") do
              render RUI::Markdown::Safe.new { "## #{@title}" }

              render RUI::Links::Destructive.new(
                href: "#",
                icon: "x",
                data: { action: "slideout#hide" }
              )
            end
            yield
          end
        end
      end
    end
  end
end
