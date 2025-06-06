# frozen_string_literal: true

class Views::Components::FormsView < Views::Base
  include Phlex::Rails::Helpers::FormWith

  register_output_helper :select

  def initialize(employee)
    @employee = employee
  end

  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown::Unsafe.new do
<<-STRING
# Forms

`RUI::Forms` ships with a customized `FormBuilder` that provides a set of
helpers for creating forms. It is built on top of the standard Rails form helpers.

This part of the gem is very much a work in progress. The overarching goal is to provide form elements that are styled to match the rest of the RUI kit elements, but in a way that adheres to traditional Rails conventions.

Check back soon as these elements are finalized and documented.

## Example

```ruby
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
  f.label :location_ids, "Locations"
  f.collection_check_boxes :location_ids, Location.all, :id, :name do |c|
    c.label(class: "flex flex-row gap-3 items-center justify-middle") { c.check_box + c.text }
  end
  f.collection_radio_buttons :location_ids, Location.all, :id, :name do |b|
    div(class: "flex flex-row gap-3 items-center justify-middle") do
      (b.radio_button || "") + (b.label || "")
    end
  end
  f.submit "Submit Button"
end
```

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
        f.label :location_ids, "Locations"
        f.collection_check_boxes :location_ids, Location.all, :id, :name do |c|
          c.label(class: "flex flex-row gap-3 items-center justify-middle") { c.check_box + c.text }
        end
        f.collection_radio_buttons :location_ids, Location.all, :id, :name do |b|
          div(class: "flex flex-row gap-3 items-center justify-middle") do
            (b.radio_button || "") + (b.label || "")
          end
        end
        f.submit "Submit Button"
      end
    end
  end
end
