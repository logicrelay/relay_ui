# frozen_string_literal: true

class RUI::Forms::Radio < RUI::Base
  def initialize(label:, &)
    @label = label
    super(&)
  end

  def view_template
    render RUI::Forms::FieldGroup.new do
      render RUI::Forms::Label.new { @label }
      yield
    end
  end

  def option(**attrs, &)
    div(class: "flex flex-row gap-3 items-center") do
      input(class: "hover:cursor-pointer", type: :radio, **attrs)
      label(&)
    end
  end
end
