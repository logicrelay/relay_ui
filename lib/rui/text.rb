module RUI::Text
  class Large < RUI::Base
    def view_template
      p(class: "text-lg text-zinc-700") { yield }
    end
  end

  class Medium < RUI::Base
    def view_template
      p(class: "text-base text-zinc-700") { yield }
    end
  end

  class Small < RUI::Base
    def view_template
      p(class: "text-sm text-zinc-700") { yield }
    end
  end

  class Markdown < RUI::Base
    def view_template(&block)
      article(class: "rui-markdown") do
        RUI::Markdown::Renderer.instance.get(capture(&block))
      end
    end
  end
end
