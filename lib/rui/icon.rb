require "tabler_icons_ruby"

class RUI::Icon < RUI::Base
  def initialize(icon)
    @icon = icon
  end

  def view_template
    raw TablerIconsRuby.render(@icon)
  end
end
