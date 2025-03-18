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
        class: "border border-zinc-300 hover:border-zinc-400 rounded px-2 py-1.5 hover:cursor-pointer",
        **@attrs,
        &
      )
    end
  end

  def option(**attrs, &)
    tag(:option, **attrs, &)
  end
end
