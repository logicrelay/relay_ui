# frozen_string_literal: true

class RUI::Forms::Checkbox < RUI::Base
  def initialize(kwargs)
    @kwargs = kwargs
  end

  def view_template(&)
  div(class: "rui:flex rui:flex-row rui:gap-3 rui:items-center") do
      input(
        type: "hidden",
        value: "0",
        autocomplete: "off",
        **@kwargs
      )
      input(
        type: "checkbox",
        value: "1",
        class: "rui:appearance-none rui:size-4 rui:border rui:border-zinc-300 rui:rounded rui:hover:border-zinc-500 rui:hover:cursor-pointer rui:checked:bg-blue-700",
        **@kwargs
      )
      render RUI::Forms::Label.new(&) if block_given?
    end
  end
end
