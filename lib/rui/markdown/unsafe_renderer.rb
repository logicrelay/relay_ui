# frozen_string_literal: true

require "rouge"
require "rouge/plugins/redcarpet"
require "redcarpet"

class RUI::Markdown::UnsafeRenderer < Redcarpet::Render::XHTML
  include Rouge::Plugins::Redcarpet

  def block_code(code, lang)
    lexer =
      begin
        Rouge::Lexer.find_fancy(lang, code)
      rescue Rouge::Guesser::Ambiguous => e
        e.alternatives.first
      end
    lexer ||= Rouge::Lexers::PlainText

    if lexer.tag == "make"
      code.gsub! %r{^    }, "\t"
    end

    formatter = rouge_formatter(lexer)

    # This is a hack to unescape HTML entities in code blocks
    unescaped = CGI.unescapeHTML(code)

    formatter.format(lexer.lex(unescaped))
  end

  private

  def rouge_formatter(lexer)
    Rouge::Formatters::HTMLLegacy.new(inline_theme: "github.dark")
  end
end
