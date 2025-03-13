# frozen_string_literal: true

class RUI::Card < RUI::Base
  def view_template(&)
    article(data: { component: "card" }, class: "rui:border rui:border-zinc-300 rui:rounded-lg", &)
  end

  def header(&)
    render Header.new(&)
  end

  def image(&)
    img(src: capture(&))
  end

  def body(&)
    p(class: "rui:p-4", &)
  end

  def footer(&)
    render Footer.new(&)
  end

  class Header < RUI::Base
    def view_template(&)
      header(class: "rui:flex rui:flex-row rui:gap-4 rui:p-4", &)
    end

    def thumbnail(&)
      img(src: capture(&), class: "rui:inline-block")
    end

    def titles(&)
      render Titles.new(&)
    end

    class Titles < RUI::Base
      def view_template(&)
        div(class: "rui:flex rui:flex-col", &)
      end

      def title(&)
        h2(class: "rui:text-xl rui:font-semibold", &)
      end

      def subtitle(&)
        h3(&)
      end
    end
  end

  class Footer < RUI::Base
    def view_template(&)
      footer(class: "rui:flex rui:flex-row rui:gap-4 rui:px-4", &)
    end

    def actions(&)
      render Actions.new(&)
    end

    def icons(&)
      render Icons.new(&)
    end

    class Actions < RUI::Base
      def view_template(&)
        div(class: "rui:flex rui:flex-row rui:gap-1", &)
      end

      def action(&)
        button(&)
      end
    end

    class Icons < RUI::Base
      def view_template(&)
        div(class: "rui:flex rui:flex-row rui:gap-1", &)
      end

      def icon(&)
        div(class: "rui:size-5") do
          render RUI::Icon.new(capture(&))
        end
      end
    end
  end
end
