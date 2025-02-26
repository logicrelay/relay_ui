class RUI::Toggle < RUI::Base
  def view_template
    div(class: "inline-flex gap-1 p-1 rounded-lg bg-zinc-100", data: { controller: "rui_toggle" }) { yield }
  end

  def option(icon: nil)
    # When toggle is triggered, add classes: bg-white text-zinc-700 to the selected option
    div(class: "flex flex-row gap-1 px-4 py-1 rounded-lg text-zinc-400", data: { action: "click->rui_toggle#switch" }) do
      render RUI::Icon.new(icon) if icon
      span { yield }
    end
  end
end
