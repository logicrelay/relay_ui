# frozen_string_literal: true

require "redcarpet"

class RUI::Markdown::Generator
  include Singleton

  def initialize
    options = {
      filter_html: true,
      hard_wrap: true,
      link_attributes: { rel: "nofollow", target: "_blank" },
      escape_html: true
    }

    unsafe_renderer = RUI::Markdown::UnsafeRenderer.new options
    safe_renderer = RUI::Markdown::SafeRenderer.new options

    extensions = {
      autolink: true,
      tables: true,
      fenced_code_blocks: true,
      lax_spacing: true,
      no_intra_emphasis: true,
      strikethrough: true,
      superscript: true,
      disable_indented_code_blocks: true
    }

    @unsafe_generator = Redcarpet::Markdown.new unsafe_renderer, extensions
    @safe_generator = Redcarpet::Markdown.new safe_renderer, extensions
  end

  def get_unsafe(markdown) = @unsafe_generator.render(markdown).html_safe

  def get_safe(markdown) = @safe_generator.render(markdown).html_safe
end
