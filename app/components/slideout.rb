class RelayUi::Slideout < RelayUi::Base
  include Phlex::Rails::Helpers::TurboFrameTag
  
  def view_template
    turbo_frame_tag "slideout" do
      div(class: "absolute inset-0 z-50", data: {controller: "slideout"}) do
        a(href: "#", class: "cursor-default", data: { action: "slideout#hide" }) do
          div(id: "modal-curtain", class: "w-screen h-screen bg-black transition-opacity opacity-75")
        end
        div(class: "right-0 fixed inset-y-0 flex max-w-1/2 pointer-events-none") do
          div(class: "w-screen pointer-events-auto", data: { slideout_target: "slideout" }) do
            div(class: "w-full h-full bg-white shadow") do
              yield
            end
          end
        end
      end
    end
  end
end