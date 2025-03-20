# frozen_string_literal: true

class Views::Components::ButtonsView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown::Unsafe.new do
<<-STRING
# RUI::Buttons

`RUI::Buttons` is a namespace containing button variants. Buttons will often be used with `data` attributes to handle user interactions.#{' '}

Buttons are meant to trigger actions within the current page, like form submissions or toggling elements, whereas [links](/components/links) navigate to different pages. Use buttons for interactive functionality and links for moving between pages or sections.

## Parameters
```ruby
RUI::Buttons::[Variant].new(icon: nil, **attrs) { &block }
```

`icon` _**(string)**_ optional
→ The [tabler icon](https://tabler.io/icons) to be used for this link.

`**attrs` _**(hash)**_ (optional)
→ Any additional attributes to be applied to the <button> HTML element.

`&block` _**(block)**_ (optional)
→ The text content to be displayed inside the button.

## Variants

Button variants are listed below.
STRING
      end

      div(class: "flex flex-row gap-3 items-center my-3") do
        render RUI::Buttons::Primary.new { "Primary Button" }
        render RUI::Buttons::Primary.new(icon: 'star') { "Primary Button" }
        render RUI::Buttons::Primary.new(icon: 'star')
      end

      render RUI::Markdown::Unsafe.new do
<<-STRING
```ruby
render RUI::Buttons::Primary.new(icon: 'star') { "Primary Button" }
render RUI::Buttons::Primary.new { "Primary Button" }
render RUI::Buttons::Primary.new(icon: 'star')
```
STRING
      end

      div(class: "flex flex-row gap-3 items-center my-3") do
        render RUI::Buttons::Secondary.new { "Secondary Button" }
        render RUI::Buttons::Secondary.new(icon: 'star') { "Secondary Button" }
        render RUI::Buttons::Secondary.new(icon: 'star')
      end

      render RUI::Markdown::Unsafe.new do
<<-STRING
```ruby
render RUI::Buttons::Secondary.new { "Secondary Button" }
render RUI::Buttons::Secondary.new(icon: 'star') { "Secondary Button" }
render RUI::Buttons::Secondary.new(icon: 'star')
```
STRING
      end

      div(class: "flex flex-row gap-3 items-center my-3") do
        render RUI::Buttons::Outline.new { "Outline Button" }
        render RUI::Buttons::Outline.new(icon: 'star') { "Outline Button" }
        render RUI::Buttons::Outline.new(icon: 'star')
      end

      render RUI::Markdown::Unsafe.new do
<<-STRING
```ruby
render RUI::Buttons::Outline.new { "Outline Button" }
render RUI::Buttons::Outline.new(icon: 'star') { "Outline Button" }
render RUI::Buttons::Outline.new(icon: 'star')
```
STRING
      end

      div(class: "flex flex-row gap-3 items-center my-3") do
        render RUI::Buttons::Destructive.new { "Destructive Button" }
        render RUI::Buttons::Destructive.new(icon: 'star') { "Destructive Button" }
        render RUI::Buttons::Destructive.new(icon: 'star')
      end

      render RUI::Markdown::Unsafe.new do
<<-STRING
```ruby
render RUI::Buttons::Destructive.new { "Destructive Button" }
render RUI::Buttons::Destructive.new(icon: 'star') { "Destructive Button" }
render RUI::Buttons::Destructive.new(icon: 'star')
```
STRING
      end

      div(class: "flex flex-row gap-3 items-center my-3") do
        render RUI::Buttons::Ghost.new { "Ghost Button" }
        render RUI::Buttons::Ghost.new(icon: 'star') { "Ghost Button" }
        render RUI::Buttons::Ghost.new(icon: 'star')
      end

      render RUI::Markdown::Unsafe.new do
<<-STRING
```ruby
render RUI::Buttons::Ghost.new { "Ghost Button" }
render RUI::Buttons::Ghost.new(icon: 'star') { "Ghost Button" }
render RUI::Buttons::Ghost.new(icon: 'star')
```

## Additonal attributes

See the following example of passing data attributes to a button:

```ruby
render RUI::Buttons::Primary.new(icon: "trash", data: { action: "user#delete" }) { "Delete User" }
```

This would result in the following HTML:

```html
<button class="..." data-action="user#delete">...</button>
```
STRING
      end
    end
  end
end
