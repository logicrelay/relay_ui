class RUI::Navigation < RUI::Base
  register_value_helper :request

  def view_template
    div(class: "flex flex-col sticky top-0 max-h-screen overflow-y-auto mx-10 py-10") do
      yield
    end
  end

  def section_heading
    p(class: "pt-8 pb-4 mt-6 text-sm font-semibold uppercase text-zinc-400 border-t border-zinc-200") do
      yield
    end
  end

  def icon_link(href:, icon:)
    if request.path == href
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

  def text_link(href)
    if request.path == href
      state_classes = "border-blue-700 text-zinc-700"
    else
      state_classes = "border-transparent text-zinc-400 hover:border-zinc-200 hover:text-zinc-700"
    end

    a(href:, class: "text-zinc-400 px-5 py-1 border-l-3 #{state_classes}") do
      span { yield }
    end
  end

  def coming_soon
    div(class: "flex flex-row items-center") do
      span(class: "text-zinc-400 px-5 py-1 border-l-3 border-transparent") do
        yield
      end
      render RUI::Badge::Gray.new { "Coming Soon" }
    end
  end
end
