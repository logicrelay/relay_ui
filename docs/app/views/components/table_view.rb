# frozen_string_literal: true

class Views::Components::TableView < Views::Base
  def initialize(employees)
    @employees = employees
  end

  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown::Unsafe.new do
<<-STRING
# Tables

`RUI::Table` is coming soon...

```ruby
render RUI::Table.new(@employees) do |t|
  t.column("First Name", &:first_name)
  t.column("Last Name", &:last_name)
  t.column("Email", &:email)
  t.column("Phone", :center, &:phone)
end
```
STRING
      end
      div class: "my-6" do
        render RUI::Table.new(@employees) do |t|
          t.column("First Name", &:first_name)
          t.column("Last Name", &:last_name)
          t.column("Email", &:email)
          t.column("Phone", :center, &:phone)
        end
      end
    end
  end
end
