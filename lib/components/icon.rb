class RelayUi::Icon < RelayUi::Base
  def initialize(icon)
    @icon = icon
  end

  def view_template
    raw TablerIconsRuby.render(@icon)
  end
end
