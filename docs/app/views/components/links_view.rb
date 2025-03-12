class Views::Components::LinksView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown::Safe.new do
<<-STRING
# RUI::Links

`RUI::Links` is a namespace containing different link variations that can be used in RelayUI. The look and feel of links are meant to replicate `RUI::Buttons` exactly.

Note that RelayUI differentiates between buttons and links. Links are used to navigate to a different page or location, while buttons are used to trigger actions. For this reason, links have an `href` parameter while buttons don't.

## Parameters
|Parameter|Type|Default|Description|
|---|---|---|---|
|`href`|`string`|`#`|The URL or path the link should navigate to.|
|`icon`|`string`|`nil`|The [tabler icon](https://tabler.io/icons) to be used for this link. If blank, no icon will be shown.|
|`data`|`hash`|`{}`|HTML data attributes for the button, eg: `data: { action: slideout#hide }`|

## Variants

Link variants are listed below.

### RUI::Links::Primary
STRING
      end

      div(class: "flex flex-row gap-3 items-center mb-3") do
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

### RUI::Links::Secondary
STRING
      end

      div(class: "flex flex-row gap-3 items-center mb-3") do
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

### RUI::Links::Outline
STRING
      end

      div(class: "flex flex-row gap-3 items-center mb-3") do
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

### RUI::Links::Desctructive
STRING
      end

      div(class: "flex flex-row gap-3 items-center mb-3") do
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

### RUI::Links::Ghost
STRING
      end

      div(class: "flex flex-row gap-3 items-center mb-3") do
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

## Dependencies

The following gems have been included in RelayUI to make this component work:

- [tabler_icons_ruby](https://github.com/owaiswiz/tabler_icons_ruby) for rendering icons
STRING
      end
    end
  end
end
