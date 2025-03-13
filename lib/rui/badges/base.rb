# frozen_string_literal: true

class RUI::Badges::Base < RUI::Base
  def view_template
    span(class: "rui:px-3 rui:py-0.5 rui:text-xs rui:rounded-full #{variant_classes}") { yield }
  end
end
