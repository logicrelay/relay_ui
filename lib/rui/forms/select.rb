# frozen_string_literal: true

class RUI::Forms::Select < RUI::Base
  def initialize(label:, **attrs, &)
    @label = label
    @attrs = attrs
    super(&)
  end

  def view_template(&)
    render RUI::Forms::FieldGroup.new do
      render RUI::Forms::Label.new { @label }
      select(
        class: "rui:border rui:border-zinc-300 rui:hover:border-zinc-400 rui:rounded rui:px-2 rui:py-1.5 rui:hover:cursor-pointer",
        **@attrs,
        &
      )
    end
  end

  def option(**attrs, &)
    tag(:option, **attrs, &)
  end
end
