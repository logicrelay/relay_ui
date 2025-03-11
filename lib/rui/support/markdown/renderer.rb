require "rouge"
require "rouge/plugins/redcarpet"
require "redcarpet"

class RUI::Support::Markdown::Renderer < Redcarpet::Render::HTML
  include Rouge::Plugins::Redcarpet

  def block_code(code, lang)
    "<pre>" \
      "<code>#{code}</code>" \
    "</pre>"
  end
end
