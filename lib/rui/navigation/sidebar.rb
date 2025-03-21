# frozen_string_literal: true

class RUI::Navigation::Sidebar < RUI::Base
  def view_template
    div(class: "p-10 pb-36 hidden lg:flex flex-col bg-white z-50 lg:z-auto fixed lg:relative w-screen md:w-auto h-screen lg:h-auto overflow-auto", data: { "navigation-target": "sidebar" }) do
      yield
    end
    button(class: "lg:hidden hidden bg-black/75 fixed w-screen h-screen", data: { navigation_target: "curtain", action: "navigation#toggle" })
  end

  def section_heading
    p(class: "pt-8 pb-4 mt-6 text-base md:text-sm font-semibold uppercase text-zinc-400") do
      yield
    end
  end

  def icon_link(icon:, href:, selected: false)
    if selected
      state_classes = "border-blue-700 text-zinc-700 **:[svg]:stroke-blue-700 font-semibold"
    else
      state_classes = "border-transparent text-zinc-500 hover:border-zinc-200 hover:text-zinc-700 **:[svg]:stroke-zinc-400 hover:**:[svg]:stroke-zinc-700"
    end

    a(href:, class: "inline-flex items-center gap-2 py-1 #{state_classes}") do
      div(class: "size-5 md:size-4") do
        render RUI::Icon.new(icon)
      end
      span(class: "text-lg md:text-base") { yield }
    end
  end

  def text_link(href:, selected: false)
    if selected
      state_classes = "border-blue-700 text-zinc-700 font-semibold"
    else
      state_classes = "border-transparent text-zinc-400 hover:border-zinc-200 hover:text-zinc-700"
    end

    a(href:, class: "text-zinc-400 px-5 py-1 border-l-3 #{state_classes}") do
      span(class: "text-lg md:text-base") { yield }
    end
  end
end
