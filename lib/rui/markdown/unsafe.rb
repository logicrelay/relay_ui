  # frozen_string_literal: true

  class RUI::Markdown::Unsafe < RUI::Base
    def view_template(&block)
      article(class: "prose") do
        RUI::Markdown::Generator.instance.get_unsafe(capture(&block))
      end
    end
  end
