# frozen_string_literal: true

class RUI::Forms::Checkbox < RUI::Base
  def initialize(**kwargs)
    @kwargs = kwargs
  end

  def view_template(&)
  div(class: "flex flex-row gap-3 items-center") do
      input(
        type: "hidden",
        value: "0",
        autocomplete: "off",
        **@kwargs
      )
      input(
        type: "checkbox",
        value: "1",
        class: "appearance-none size-4 border border-zinc-300 rounded hover:border-zinc-500 hover:cursor-pointer checked:bg-blue-700",
        **@kwargs
      )
      render RUI::Forms::Label.new(&) if block_given?
    end
  end
end
