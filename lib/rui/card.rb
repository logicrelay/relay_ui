# frozen_string_literal: true

class RUI::Card < RUI::Base
  def initialize(**attrs, &)
    @attrs = attrs
    super(&)
  end

  def view_template(&)
    div do
      article("data-component": "card", class: "#{padding(capture(&))} rui:flex rui:flex-col rui:gap-4 rui:border rui:border-zinc-300 rui:rounded-lg", **@attrs, &)
    end
  end

  def header(&)
    render Header.new(&)
  end

  def image(&)
    img(src: capture(&))
  end

  def body(&)
    div(class: "rui:px-4", &)
  end

  def footer(&)
    render Footer.new(&)
  end

  class Header < RUI::Base
    def view_template(&)
      header(class: "rui:flex rui:flex-row rui:justify-between rui:items-center rui:gap-4 rui:px-4", &)
    end

    def thumbnail(&)
      img(src: capture(&), class: "rui:inline-block rui:rounded-full rui:size-10")
    end

    def titles(&)
      render Titles.new(&)
    end

    def actions(&)
      div(class: "rui:flex rui:flex-row rui:gap-2 rui:items-center", &)
    end

    class Titles < RUI::Base
      def view_template(&)
        div(class: "rui:grow rui:shrink rui:basis-0 rui:flex rui:flex-col", &)
      end

      def title(&)
        h2(class: "rui:text-xl rui:font-semibold", &)
      end

      def subtitle(&)
        h3(class: "rui:text-lg", &)
      end
    end
  end

  class Footer < RUI::Base
    def view_template(&)
      footer(class: "rui:flex rui:flex-row rui:justify-end rui:items-center rui:gap-4 rui:px-4", &)
    end

    def actions(&)
      render Actions.new(&)
    end

    class Actions < RUI::Base
      def view_template(&)
        div(class: "rui:flex rui:flex-row rui:gap-2 rui:items-center", &)
      end

      def action(href: "#", **kwargs, &)
        a(href:, class: "rui:text-blue-700 rui:hover:underline rui:uppercase rui:text-sm rui:font-semibold", **kwargs, &)
      end
    end
  end

  private

  def padding(content)
    return if content.empty?
    padding = []
    doc = Nokogiri::HTML::DocumentFragment.parse(content)
    padding << "rui:pt-4" if doc.children.first.name != "img"
    padding << "rui:pb-4" if doc.children.last.name != "img"
    padding.join(" ")
  end
end
