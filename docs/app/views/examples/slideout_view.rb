class Views::Examples::SlideoutView < Views::Base
  def view_template
    render RelayUi::Slideout.new do
      div(class: "flex flex-row justify-between items-center p-10") do
        render RelayUi::Headings::H2.new { "Slideout title" }
        render RelayUi::Buttons::Destructive.new(icon: "x", data: { action: "slideout#hide" })
      end
    end
  end
end
