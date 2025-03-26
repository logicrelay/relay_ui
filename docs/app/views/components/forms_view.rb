# frozen_string_literal: true

class Views::Components::FormsView < Views::Base
  include Phlex::Rails::Helpers::FormWith
  include RUI::Forms::Helpers

  def initialize(employee)
    @employee = employee
  end

  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown::Unsafe.new do
<<-STRING
# RUI::Forms

`RUI::Forms` description...
STRING
      end

      rui_form_with do |f|
        f.text_field :text_field
        f.password_field :password_field
        f.text_area :text_area
        f.color_field :color_field
        f.search_field :search_field
        f.telephone_field :telephone_field
        f.phone_field :phone_field
        f.date_field :date_field
        f.time_field :time_field
        f.datetime_field :datetime_field
        f.month_field :month_field
        f.week_field :week_field
        f.url_field :url_field
        f.email_field :email_field
        f.number_field :number_field
        f.range_field :range_field
        f.file_field :file_field
        f.submit "Submit Button"
      end
      div class: "flex flex-col gap-4" do
        render RUI::Forms::Text.new { "RUI::Forms::Text" }
        render RUI::Forms::Email.new { "RUI::Forms::Email" }
        render RUI::Forms::Password.new { "RUI::Forms::Password" }
        render RUI::Forms::Phone.new { "RUI::Forms::Phone" }
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
