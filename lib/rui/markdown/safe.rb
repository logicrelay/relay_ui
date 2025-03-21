  # frozen_string_literal: true

  class RUI::Markdown::Safe < RUI::Base
    def view_template(&block)
      article(class: "prose") do
        RUI::Markdown::Generator.instance.get_safe(capture(&block))
      end
    end
  end
