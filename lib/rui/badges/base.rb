# frozen_string_literal: true

class RUI::Badges::Base < RUI::Base
  def view_template
    span(class: "px-3 py-0.5 text-xs rounded-full text-center #{variant_classes}") { yield }
  end
end
