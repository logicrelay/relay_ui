# frozen_string_literal: true

class RUI::Links::Text < RUI::Base
  def initialize(href: "#", **attrs)
    @href = href
    @attrs = attrs
  end

  def view_template(&) = a(href: @href, class: "text-blue-700 hover:cursor-pointer hover:underline", **@attrs, &)

  private

  def classes
    ""
  end
end
