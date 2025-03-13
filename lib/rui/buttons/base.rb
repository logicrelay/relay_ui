# frozen_string_literal: true

class RUI::Buttons::Base < RUI::Base
  def initialize(icon: nil, data: {})
    @icon = icon
    @data = data
  end

  def view_template
    button(class: classes, data: @data) do
      div(class: "rui:flex rui:flex-row rui:items-center rui:gap-2") do
        if @icon
          div(class: "rui:size-4 rui:my-1") do
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

  def base_classes = "rui:inline-block rui:px-3 rui:py-1 rui:hover:cursor-pointer rui:rounded rui:transition rui:duration-200 rui:ease-in-out"
end
