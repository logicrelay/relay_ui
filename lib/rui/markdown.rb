  class RUI::Markdown < RUI::Base
    def initialize(html_safe: true)
      @html_safe = html_safe
    end

    def view_template(&block)
      article(class: "rui-markdown") do
        if @html_safe
          RUI::Support::Markdown::Generator.instance.get_safe(capture(&block))
        else
          RUI::Support::Markdown::Generator.instance.get(capture(&block))
        end
      end
    end
  end
