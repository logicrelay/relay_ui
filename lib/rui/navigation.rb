# frozen_string_literal: true

class RUI::Navigation < RUI::Base
  def view_template
    a(href: "#", class: "hidden fixed inset-y-0 left-0 z-40 cursor-default opacity-0 transition-opacity duration-200 ease-in-out", data: { action: "navigation#toggle", "navigation-target": "curtain" }) do
      div(id: "modal-curtain", class: "w-screen h-screen bg-black opacity-75", data: { navigation_target: "curtain" })
    end
    div(class: "flex flex-col fixed inset-y-0 left-0 z-50 transition-transform duration-200 bg-white ease-in-out -translate-x-full lg:translate-x-0 lg:static lg:w-auto lg:max-w-none lg:h-screen lg:overflow-y-auto px-10 pt-10 lg:pt-0", data: { "navigation-target": "sidebar" }) do
      # TODO: Remove this duplication w/ icon_link
      a(href: "#", class: "inline-flex lg:hidden items-center gap-2 py-1 border-transparent text-zinc-400 hover:border-zinc-200 hover:text-zinc-700 **:[svg]:stroke-zinc-300 hover:**:[svg]:stroke-zinc-700", data: { action: "navigation#toggle" }) do
        div(class: "size-4") do
          render RUI::Icon.new("layout-sidebar-left-collapse")
        end
        span { "Exit Menu" }
      end
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
