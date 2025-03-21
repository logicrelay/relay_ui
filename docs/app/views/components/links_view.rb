# frozen_string_literal: true

class Views::Components::LinksView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown::Unsafe.new do
<<-STRING
# Links

`RUI::Links` is a namespace containing link variants. Links will often be used with `href` attributes to handle user interations.

Links are meant to navigate between different pages or sections, whereas [buttons](/components/buttons) are meant to trigger actions within the current page.

## Parameters
```ruby
RUI::Links::[Variant].new(icon: nil, **attrs) { &block }
```

`icon` _**(string)**_ optional
→ The [tabler icon](https://tabler.io/icons) to be used for this link.

`**attrs` _**(hash)**_ (optional)
→ Any additional attributes to be applied to the <a> HTML element.

`&block` _**(block)**_ (optional)
→ The text content to be displayed inside the link.

## Variants

Link variants are listed below.
STRING
      end

      div(class: "flex flex-row gap-3 items-center my-3") do
        render RUI::Links::Primary.new { "Primary Button" }
        render RUI::Links::Primary.new(icon: 'star') { "Primary Button" }
        render RUI::Links::Primary.new(icon: 'star')
      end

      render RUI::Markdown::Unsafe.new do
<<-STRING
```ruby
render RUI::Links::Primary.new { "Primary Button" }
render RUI::Links::Primary.new(icon: 'star') { "Primary Button" }
render RUI::Links::Primary.new(icon: 'star')
```
STRING
      end

      div(class: "flex flex-row gap-3 items-center my-3") do
        render RUI::Links::Secondary.new { "Secondary Button" }
        render RUI::Links::Secondary.new(icon: 'star') { "Secondary Button" }
        render RUI::Links::Secondary.new(icon: 'star')
      end

      render RUI::Markdown::Unsafe.new do
<<-STRING
```ruby
render RUI::Links::Secondary.new { "Secondary Button" }
render RUI::Links::Secondary.new(icon: 'star') { "Secondary Button" }
render RUI::Links::Secondary.new(icon: 'star')
```
STRING
      end

      div(class: "flex flex-row gap-3 items-center my-3") do
        render RUI::Links::Outline.new { "Outline Button" }
        render RUI::Links::Outline.new(icon: 'star') { "Outline Button" }
        render RUI::Links::Outline.new(icon: 'star')
      end

      render RUI::Markdown::Unsafe.new do
<<-STRING
```ruby
render RUI::Links::Outline.new { "Outline Button" }
render RUI::Links::Outline.new(icon: 'star') { "Outline Button" }
render RUI::Links::Outline.new(icon: 'star')
```
STRING
      end

      div(class: "flex flex-row gap-3 items-center my-3") do
        render RUI::Links::Destructive.new { "Destructive Button" }
        render RUI::Links::Destructive.new(icon: 'star') { "Destructive Button" }
        render RUI::Links::Destructive.new(icon: 'star')
      end

      render RUI::Markdown::Unsafe.new do
<<-STRING
```ruby
render RUI::Links::Destructive.new { "Destructive Button" }
render RUI::Links::Destructive.new(icon: 'star') { "Destructive Button" }
render RUI::Links::Destructive.new(icon: 'star')
```
STRING
      end

      div(class: "flex flex-row gap-3 items-center my-3") do
        render RUI::Links::Ghost.new { "Ghost Button" }
        render RUI::Links::Ghost.new(icon: 'star') { "Ghost Button" }
        render RUI::Links::Ghost.new(icon: 'star')
      end

      render RUI::Markdown::Unsafe.new do
<<-STRING
```ruby
render RUI::Links::Ghost.new { "Ghost Button" }
render RUI::Links::Ghost.new(icon: 'star') { "Ghost Button" }
render RUI::Links::Ghost.new(icon: 'star')
```

## Additonal attributes

See the following example of passing href attributes to a link:

```ruby
render RUI::Links::Primary.new(href: root_path) { "Go Home" }
```

This would result in the following HTML:

```html
<a class="..." href="/">...</a>
```
STRING
      end
    end
  end
end
