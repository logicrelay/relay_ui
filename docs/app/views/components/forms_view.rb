# frozen_string_literal: true

class Views::Components::FormsView < Views::Base
  include Phlex::Rails::Helpers::FormWith
  include RUI::Forms::Helpers

  register_output_helper :select

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
        f.textarea :textarea
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
        f.collection_checkboxes :location_ids, Location.all, :id, :name
        f.collection_radio_buttons :location_ids, Location.all, :id, :name
        f.collection_select :location_ids, Location.all, :id, :name
        f.submit "Submit Button"
      end
    end
  end
end
