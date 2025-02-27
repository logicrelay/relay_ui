class RelayUi::Toggle < RelayUi::Base
  def view_template
    div(class: "inline-flex gap-1 p-1 rounded-lg bg-zinc-100", data: { controller: "toggle_controller" }) { yield }
  end

  def option(icon: nil)
    div(class: "flex flex-row gap-1 px-4 py-1 rounded-lg text-zinc-400", data: { action: "click->toggle#switch" }) do
      render RelayUi::Icon.new(icon) if icon
      span { yield }
    end
  end
end
