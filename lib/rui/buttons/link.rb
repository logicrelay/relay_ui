class RUI::Buttons::Link < RUI::Base
  def view_template
    div do
      button(class: "hover:cursor-pointer hover:underline") do
        span { yield }
      end
    end
  end
end
