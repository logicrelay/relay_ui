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

The `RUI::Table` component renders a table with default styles applied to the header and rows. It makes use of [phlex's `vanish` method](https://www.phlex.fun/components/yielding#vanishing-the-yield) to provide a dead-simple DSL for defining columns and their content.

Columns can be creatively ordered and composed to display data in a way that makes sense for your application.

## Parameters

```ruby
RUI::Table.new { &block }
```

`&block` _**(block)**_ (required)
→ The elements to be shown in the table

## Example

A comprehensive example of the `RUI::Table` component is shown below.

STRING
      end
      div class: "my-6" do
        render RUI::Table.new(@employees) do |t|
          t.column("First Name", &:first_name)
          t.column("Last Name", &:last_name)
          t.column("Email", &:email)
          t.column("Phone", :center, &:phone)
          t.column("", :center) do |employee|
            render RUI::Links::Ghost.new(icon: "edit")
            render RUI::Links::Ghost.new(icon: "archive")
          end
        end
      end
      render RUI::Markdown::Unsafe.new do
<<-STRING

This example includes all of the block-level sections made available via the `RUI::Table` component. The code to generate this component is below:

```ruby
render RUI::Table.new(@employees) do |t|
  t.column("First Name", &:first_name)
  t.column("Last Name", &:last_name)
  t.column("Email", &:email)
  t.column("Phone", :center, &:phone)
  t.column("", :center) do |e|
    render RUI::Links::Ghost.new(icon: "edit", href: edit_employee_path(e))
    render RUI::Links::Ghost.new(icon: "archive", href: archive_employee_path(e))
  end
end
```

Each column adheres to the following structure...

```ruby
column(header, align = :left, &content)
```

`header` _**(string)**_ (required)
→ The text to be used in the table heading (<th>) element.

`align` _**(symbol)**_ (optional)
→ The alignment of the column. Options: `:left`, `:center`, `:right`.

`&content` _**(block)**_ (required)
→ The content to be shown in the table cell (<td>) element.

This makes displaying data from a model instance easy. Consider this example:

```ruby
render RUI::Table.new(@employees) do |t|
  t.column("First Name", &:first_name)
  ...
end
```

This creates a table and shows each employee's first name in the first column. The column will have a "First Name" heading. To change the alignment, just pass the optional `align` parameter:

```ruby
t.column("First Name", :right, &:first_name)
```

You can also create columns with custom content, like the final column in the example:

```ruby
t.column("", :center) do |e|
  render RUI::Links::Ghost.new(icon: "edit", href: edit_employee_path(e))
  render RUI::Links::Ghost.new(icon: "archive", href: archive_employee_path(e))
end
```

This will put two action buttons side to side in a column with a blank heading. You could use a similar column to display profile images or other elements.
STRING
      end
    end
  end
end
