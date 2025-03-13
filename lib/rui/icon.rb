# frozen_string_literal: true

require "tabler_icons_ruby"

class RUI::Icon < RUI::Base
  def initialize(icon)
    @icon = icon
  end

  def view_template
    html { TablerIconsRuby.render(@icon) }
  end
end
