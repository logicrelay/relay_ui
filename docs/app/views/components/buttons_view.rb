class Views::Components::ButtonsView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown::Safe.new do
<<-STRING
# RUI::Buttons

`RUI::Buttons` is a namespace containing different button variations that can be used in RelayUI. Each button has a different style and purpose, but all buttons share a common interface.

Note that RelayUI differentiates between buttons and links. Buttons are used to trigger actions, while links are used to navigate to a different page or location. For this reason, buttons do not take an `href` parameter, while links do.

## Parameters
|Parameter|Type|Default|Description|
|---|---|---|---|
|`icon`|`string`|`nil`|The [tabler icon](https://tabler.io/icons) to be used for this link. If blank, no icon will be shown.|
|`data`|`hash`|`{}`|HTML data attributes for the button, eg: `data: { action: slideout#hide }`|

## Variants

Button variants are listed below.

### RUI::Buttons::Primary
STRING
      end

      div(class: "flex flex-row gap-3 items-center mb-3") do
        render RUI::Buttons::Primary.new { "Primary Button" }
        render RUI::Buttons::Primary.new(icon: 'star') { "Primary Button" }
        render RUI::Buttons::Primary.new(icon: 'star')
      end

      render RUI::Markdown::Unsafe.new do
<<-STRING
```ruby
render RUI::Buttons::Primary.new { "Primary Button" }
render RUI::Buttons::Primary.new(icon: 'star') { "Primary Button" }
render RUI::Buttons::Primary.new(icon: 'star')
```

### RUI::Buttons::Secondary
STRING
      end

      div(class: "flex flex-row gap-3 items-center mb-3") do
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

### RUI::Buttons::Outline
STRING
      end

      div(class: "flex flex-row gap-3 items-center mb-3") do
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

### RUI::Buttons::Desctructive
STRING
      end

      div(class: "flex flex-row gap-3 items-center mb-3") do
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

### RUI::Buttons::Ghost
STRING
      end

      div(class: "flex flex-row gap-3 items-center mb-3") do
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

## Dependencies

The following gems have been included in RelayUI to make this component work:

- [tabler_icons_ruby](https://github.com/owaiswiz/tabler_icons_ruby) for rendering icons
STRING
      end
    end
  end
end
