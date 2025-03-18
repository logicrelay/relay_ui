# frozen_string_literal: true

class RUI::Card < RUI::Base
  def initialize(**attrs, &)
    @attrs = attrs
    super(&)
  end

  def view_template(&)
    div do
      article("data-component": "card", class: "#{padding(capture(&))} flex flex-col gap-4 border border-zinc-300 rounded-lg", **@attrs, &)
    end
  end

  def header(&)
    render Header.new(&)
  end

  def image(&)
    img(src: capture(&))
  end

  def body(&)
    div(class: "px-4", &)
  end

  def footer(&)
    render Footer.new(&)
  end

  class Header < RUI::Base
    def view_template(&)
      header(class: "flex flex-row justify-between items-center gap-4 px-4", &)
    end

    def thumbnail(&)
      img(src: capture(&), class: "inline-block rounded-full size-10")
    end

    def titles(&)
      render Titles.new(&)
    end

    def actions(&)
      div(class: "flex flex-row gap-2 items-center", &)
    end

    class Titles < RUI::Base
      def view_template(&)
        div(class: "grow shrink basis-0 flex flex-col", &)
      end

      def title(&)
        h2(class: "text-xl font-semibold", &)
      end

      def subtitle(&)
        h3(class: "text-lg", &)
      end
    end
  end

  class Footer < RUI::Base
    def view_template(&)
      footer(class: "flex flex-row justify-end items-center gap-4 px-4", &)
    end

    def actions(&)
      render Actions.new(&)
    end

    class Actions < RUI::Base
      def view_template(&)
        div(class: "flex flex-row gap-2 items-center", &)
      end

      def action(href: "#", **kwargs, &)
        a(href:, class: "text-blue-700 hover:underline uppercase text-sm font-semibold", **kwargs, &)
      end
    end
  end

  private

  def padding(content)
    return if content.empty?
    padding = []
    doc = Nokogiri::HTML::DocumentFragment.parse(content)
    padding << "pt-4" if doc.children.first.name != "img"
    padding << "pb-4" if doc.children.last.name != "img"
    padding.join(" ")
  end
end
