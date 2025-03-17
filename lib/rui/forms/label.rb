# frozen_string_literal: true

class RUI::Forms::Label < RUI::Base
  def view_template(&)
    label(class: "rui:text-sm rui:font-semibold", &)
  end
end
