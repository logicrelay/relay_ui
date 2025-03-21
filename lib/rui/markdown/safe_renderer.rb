# frozen_string_literal: true

require "rouge"
require "rouge/plugins/redcarpet"
require "redcarpet"

class RUI::Markdown::SafeRenderer < Redcarpet::Render::HTML
  include Rouge::Plugins::Redcarpet

  private

  def rouge_formatter(lexer)
    Rouge::Formatters::HTMLLegacy.new(inline_theme: "github.dark")
  end
end
