class RUI::Icon < RUI::Base
  def initialize(icon)
    @icon = icon
  end

  def view_template
    div(class: "size-6") do
      raw TablerIconsRuby.render(@icon)
    end
  end
end
