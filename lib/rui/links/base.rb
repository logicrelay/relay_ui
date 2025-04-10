# frozen_string_literal: true

class RUI::Links::Base < RUI::Base
  def initialize(href: "#", icon: nil, **attrs)
    @href = href
    @icon = icon
    @attrs = attrs
  end

  def view_template
    a(href: @href, class: classes, **@attrs) do
      div(class: "flex flex-row items-center gap-2") do
        if @icon
          div(class: "size-4 my-1") do
            render RUI::Icon.new(@icon)
          end
        end
        span { yield } if block_given?
      end
    end
  end

  private

  def classes
    "#{base_classes} #{variant_classes}"
  end

  def base_classes = "inline-block px-2 py-1 hover:cursor-pointer rounded transition duration-200 ease-in-out"
end
