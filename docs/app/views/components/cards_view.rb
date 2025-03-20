# frozen_string_literal: true

class Views::Components::CardsView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown::Unsafe.new do
<<-STRING
# Cards

The `RUI::Card` component renders a material-style card. Block elements can be included or omitted to create different layouts. Cards will fill the width of their container and should work well in flex boxes or grids.

## Parameters
```ruby
RUI::Card.new(**attrs) { &block }
```

`**attrs` _**(hash)**_ (optional)
→ Any additional attributes to be applied to the <div> HTML element.

`&block` _**(block)**_ (required)
→ The elements to be shown in the card

## Example

A comprehensive example of the `RUI::Card` component is shown below.
STRING
      end
      div(class: "my-4") do
        render RUI::Card.new do |c|
          c.header do |h|
            h.thumbnail { "https://picsum.photos/40" }
            h.titles do |t|
              t.title { "My Card" }
              t.subtitle { "Easy as pie" }
            end
            h.actions do
              render RUI::Buttons::Ghost.new(icon: "heart-filled", href: "#")
            end
          end
          c.image { "https://picsum.photos/300/100" }
          c.body { "This card was built with love." }
          c.footer do |f|
            render RUI::Buttons::Outline.new(icon: "edit", href: "#") { "Edit" }
            render RUI::Buttons::Primary.new(icon: "share", href: "#") { "Share" }
          end
        end
      end

      render RUI::Markdown::Unsafe.new do
<<-STRING
This example includes all of the block-level sections made available via the `RUI::Card` component. The code to generate this component is below:

```ruby
render RUI::Card.new do |c|
  c.header do |h|
    h.thumbnail { "https://picsum.photos/40" }
    h.titles do |t|
      t.title { "My Card" }
      t.subtitle { "Easy as pie" }
    end
    h.actions do
      render RUI::Buttons::Ghost.new(icon: "heart-filled", href: "#")
    end
  end
  c.image { "https://picsum.photos/300/100" }
  c.body { "This card was built with love." }
  c.footer do |f|
    render RUI::Buttons::Outline.new(icon: "edit", href: "#") { "Edit" }
    render RUI::Buttons::Primary.new(icon: "share", href: "#") { "Share" }
  end
end
```

By experimenting with the order, inclusion and omission of sections, you can achieve many variations of a card with this component.
STRING
      end

      div(class: "my-4 flex flex-col md:grid md:grid-cols-3 gap-3") do
        render RUI::Card.new do |c|
          c.image { "https://picsum.photos/300/100" }
          c.header do |h|
            h.titles do |t|
              t.title { "Card" }
            end
          end
          c.body do
            "This card is amazing! Look at all of the nifty things it can do."
          end
        end
        render RUI::Card.new do |c|
          c.header do |h|
            h.titles do |t|
              t.title { "Card" }
            end
            h.actions do |i|
              render RUI::Links::Ghost.new(icon: "heart-filled", href: "logicrelay.com")
            end
          end
          c.image { "https://picsum.photos/300/100" }
        end
        render RUI::Card.new do |c|
          c.header do |h|
            h.titles do |t|
              t.title { "Card" }
            end
            h.actions do |i|
              render RUI::Links::Ghost.new(icon: "heart-filled", href: "logicrelay.com")
            end
          end
          c.body do
            "This card is amazing! Look at all of the nifty things it can do."
          end
        end
        render RUI::Card.new do |c|
          c.header do |h|
            h.thumbnail { "https://picsum.photos/40" }
            h.titles do |t|
              t.title { "Card" }
            end
          end
          c.image { "https://picsum.photos/300/100" }
          c.body do
            "This card is amazing! Look at all of the nifty things it can do."
          end
          c.footer do |f|
            render RUI::Links::Ghost.new(icon: "heart-filled", href: "google.com")
            render RUI::Links::Ghost.new(icon: "star-filled", href: "google.com")
          end
        end
        render RUI::Card.new do |c|
          c.header do |h|
            h.titles do |t|
              t.title { "Card" }
              t.subtitle { "Example" }
            end
          end
          c.image { "https://picsum.photos/300/100" }
          c.body do
            "This card is amazing! Look at all of the nifty things it can do."
          end
          c.footer do |f|
            render RUI::Links::Primary.new(icon: "device-floppy", href: "#") { "Save" }
          end
        end
        render RUI::Card.new do |c|
          c.image { "https://picsum.photos/300/100" }
          c.header do |h|
            h.titles do |t|
              t.title { "Card" }
            end
            h.actions do |i|
              render RUI::Links::Ghost.new(icon: "heart-filled", href: "google.com")
            end
          end
        end
      end
    end
  end
end
