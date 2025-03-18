# frozen_string_literal: true

class RUI::Navigation < RUI::Base
  def view_template
    div(class: "hidden lg:flex lg:flex-col sticky top-0 max-h-screen overflow-y-auto p-10 -translate-x-full lg:translate-none", data: { "navigation-target": "sidebar" }) do
      yield
    end
  end

  def section_heading
    p(class: "pt-8 pb-4 mt-6 text-sm font-semibold uppercase text-zinc-400 border-t border-zinc-200") do
      yield
    end
  end

  def icon_link(icon:, href:, selected: false)
    if selected
      state_classes = "border-blue-700 text-zinc-700 **:[svg]:stroke-blue-700"
    else
      state_classes = "border-transparent text-zinc-400 hover:border-zinc-200 hover:text-zinc-700 **:[svg]:stroke-zinc-300 hover:**:[svg]:stroke-zinc-700"
    end

    a(href:, class: "inline-flex items-center gap-2 py-1 #{state_classes}") do
      div(class: "size-4") do
        render RUI::Icon.new(icon)
      end
      span { yield }
    end
  end

  def text_link(href:, selected: false)
    if selected
      state_classes = "border-blue-700 text-zinc-700"
    else
      state_classes = "border-transparent text-zinc-400 hover:border-zinc-200 hover:text-zinc-700"
    end

    a(href:, class: "text-zinc-400 px-5 py-1 border-l-3 #{state_classes}") do
      span { yield }
    end
  end
end
