# frozen_string_literal: true

class RUI::Forms::Email < RUI::Base
  def initialize(**kwargs)
    @kwargs = kwargs
  end

  def view_template(&)
    render RUI::Forms::FieldGroup.new do
      render RUI::Forms::Label.new(&) if block_given?
      input(
        type: "email",
        class: "border border-zinc-300 hover:border-zinc-400 rounded px-2 py-1",
        **@kwargs
      )
    end
    div
  end
end
