# frozen_string_literal: true

class Views::Examples::SlideoutView < Views::Base
  def view_template
    render RUI::Slideout.new do
      div(class: "flex flex-row justify-between items-center p-10") do
        render RUI::Markdown::Safe.new { "#Slideout" }
        render RUI::Links::Destructive.new(icon: "x", data: { action: "slideout#hide" })
      end
    end
  end
end
