# frozen_string_literal: true

class Views::Components::FormsView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown::Unsafe.new do
<<-STRING
# RUI::Forms

`RUI::Forms` description...
STRING
      end
      div class: "flex flex-col gap-4" do
        render RUI::Forms::Text.new { "RUI::Forms::Text" }
        render RUI::Forms::Email.new(foo: :bar) { "RUI::Forms::Email" }
        render RUI::Forms::Password.new { "RUI::Forms::Password" }
        render RUI::Forms::Checkbox.new { "RUI::Forms::Checkbox" }
        render RUI::Forms::Textarea.new { "RUI::Forms::Textarea" }
      # render RUI::Forms::PhoneNumber.new
      # render RUI::Forms::Select.new
    end
    end
  end
end
