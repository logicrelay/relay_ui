require "rouge"
require "rouge/plugins/redcarpet"
require "redcarpet"

class RUI::Markdown::SafeRenderer < Redcarpet::Render::XHTML
  include Rouge::Plugins::Redcarpet

  private

  def rouge_formatter(lexer)
    Rouge::Formatters::HTMLLegacy.new(inline_theme: "github.dark")
  end
end
