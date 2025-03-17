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
        render RUI::Forms::Email.new { "RUI::Forms::Email" }
        render RUI::Forms::Password.new { "RUI::Forms::Password" }
        render RUI::Forms::Checkbox.new { "RUI::Forms::Checkbox" }
        render RUI::Forms::Textarea.new { "RUI::Forms::Textarea" }
        render RUI::Forms::Select.new(label: "RUI::Forms::Select") do |s|
          s.option(value: "option1") { "Option 1" }
          s.option(value: "option2") { "Option 2" }
          s.option(value: "option3") { "Option 3" }
        end
        render RUI::Forms::Radio.new(label: "RUI::Forms::Radio") do |s|
          s.option(value: "option1", name: "foo") { "Option 1" }
          s.option(value: "option2", name: "foo") { "Option 2" }
          s.option(value: "option3", name: "foo") { "Option 3" }
        end
      # render RUI::Forms::PhoneNumber.new
    end
    end
  end
end
