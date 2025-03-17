# frozen_string_literal: true

class RUI::Forms::Password < RUI::Base
  def initialize(kwargs)
    @kwargs = kwargs
  end

  def view_template(&)
    render RUI::Forms::FieldGroup.new do
      render RUI::Forms::Label.new(&) if block_given?
      input(
        type: "password",
        class: "rui:border rui:border-zinc-300 rui:hover:border-zinc-400 rui:rounded rui:px-2 rui:py-1",
        **@kwargs
      )
    end
  end
end
