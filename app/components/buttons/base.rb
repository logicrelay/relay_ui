class RelayUi::Buttons::Base < RelayUi::Base
  def initialize(icon: nil)
    @icon = icon
  end

  def view_template
    div do
      button(class: classes) do
        if @icon
          div(class: "size-4 my-1") do
            render RelayUi::Icon.new(@icon)
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

  def base_classes = "flex flex-row items-center gap-2 px-3 py-1 hover:cursor-pointer rounded transition duration-200 ease-in-out"
end
