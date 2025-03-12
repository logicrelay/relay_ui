class RUI::Navigation < RUI::Base
  register_value_helper :request

  def view_template
    div(class: "rui:flex rui:flex-col rui:sticky rui:top-0 rui:max-h-screen rui:overflow-y-auto rui:mx-10 rui:py-10") do
      yield
    end
  end

  def section_heading
    p(class: "rui:pt-8 rui:pb-4 rui:mt-6 rui:text-sm rui:font-semibold rui:uppercase rui:text-zinc-400 rui:border-t rui:border-zinc-200") do
      yield
    end
  end

  def icon_link(href:, icon:)
    if request.path == href
      state_classes = "rui:border-blue-700 rui:text-zinc-700 rui:**:[svg]:stroke-blue-700"
    else
      state_classes = "rui:border-transparent rui:text-zinc-400 rui:hover:border-zinc-200 rui:hover:text-zinc-700 rui:**:[svg]:stroke-zinc-300 rui:hover:**:[svg]:stroke-zinc-700"
    end

    a(href:, class: "rui:inline-flex rui:items-center rui:gap-2 rui:py-1 #{state_classes}") do
      div(class: "rui:size-4") do
        render RUI::Icon.new(icon)
      end
      span { yield }
    end
  end

  def text_link(href)
    if request.path == href
      state_classes = "rui:border-blue-700 rui:text-zinc-700"
    else
      state_classes = "rui:border-transparent rui:text-zinc-400 rui:hover:border-zinc-200 rui:hover:text-zinc-700"
    end

    a(href:, class: "rui:text-zinc-400 rui:px-5 rui:py-1 rui:border-l-3 #{state_classes}") do
      span { yield }
    end
  end

  def coming_soon
    div(class: "rui:flex rui:flex-row rui:items-center") do
      span(class: "rui:text-zinc-400 rui:px-5 rui:py-1 rui:border-l-3 rui:border-transparent") do
        yield
      end
      render RUI::Badge::Gray.new { "Coming Soon" }
    end
  end
end
