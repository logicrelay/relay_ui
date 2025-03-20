# frozen_string_literal: true

class RUI::Badges::Base < RUI::Base
  def view_template
    div do
      span(class: "whitespace-nowrap px-3 py-0.5 text-xs rounded-full text-center font-medium #{variant_classes}") { yield }
    end
  end
end
