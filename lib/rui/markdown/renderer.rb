require "redcarpet"

class RUI::Markdown::Renderer
  include Singleton

  def initialize
    @renderer = Redcarpet::Markdown.new(Redcarpet::Render::XHTML)
  end

  def get(markdown)
    @renderer.render(markdown).html_safe
  end
end
