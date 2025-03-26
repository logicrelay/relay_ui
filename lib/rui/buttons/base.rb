# frozen_string_literal: true

class RUI::Buttons::Base < RUI::Base
  def initialize(icon: nil, **attrs)
    @icon = icon
    @attrs = attrs
  end

  # Style string public for use in forms
  STYLE = "inline-block px-2 py-1 hover:cursor-pointer rounded-md transition duration-200 ease-in-out".freeze

  def view_template
    button(class: classes, **@attrs) do
      div(class: "flex flex-row items-center gap-2") do
        if @icon
          div(class: "size-4 my-1") do
            render RUI::Icon.new(@icon)
          end
        end
        span(class: "text-nowrap") { yield } if block_given?
      end
    end
  end

  private

  def classes
    "#{STYLE} #{variant_classes}"
  end
end
