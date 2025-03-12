class RUI::Links::Base < RUI::Base
  def initialize(href: "#", icon: nil, data: {})
    @href = href
    @icon = icon
    @data = data
  end

  def view_template
    a(href: @href, class: classes, data: @data) do
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

  def base_classes = "inline-block px-3 py-1 hover:cursor-pointer rounded transition duration-200 ease-in-out"
end
