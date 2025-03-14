# frozen_string_literal: true

class Views::Components::CardsView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown::Unsafe.new do
<<-STRING
# RUI::Card

The `RUI::Card` component is a simple card modeled after Material Design. Cards should format themselves correctly regardless of which sections are included. Cards will fill the width of their container and will work well in grids or as standalone components.

## Example

The example below contains examples of every section of the card.
STRING
      end
      div(class: "mb-6") do
        render RUI::Card.new do |c|
          c.header do |h|
            h.thumbnail { "https://placehold.co/40" }
            h.titles do |t|
              t.title { "RUI::Card" }
              t.subtitle { "An easy little card to throw together" }
            end
            h.actions do |i|
              render RUI::Links::Ghost.new(
                icon: "heart-filled",
                href: "#"
              )
            end
          end
          c.image { "https://placehold.co/100x35" }
          c.body do
            "This card is amazing! Look at all of the nifty things it can do."
          end
          c.footer do |f|
            render RUI::Links::Outline.new(
              icon: "edit",
              href: "#"
            ) { "Edit" }
            render RUI::Links::Primary.new(
              icon: "device-floppy",
              href: "#"
            ) { "Save" }
          end
        end
      end

      render RUI::Markdown::Unsafe.new do
<<-STRING
```ruby
render RUI::Card.new do |c|
  c.header do |h|
    h.thumbnail { "https://placehold.co/40" }
    h.titles do |t|
      t.title { "RUI::Card" }
      t.subtitle { "An easy little card to throw together" }
    end
    h.actions do |i|
      render RUI::Links::Ghost.new(
        icon: "heart-filled",
        href: "#"
      )
    end
  end
  c.image { "https://placehold.co/100x35" }
  c.body do
    "This card is amazing! Look at all of the nifty things it can do."
  end
  c.footer do |f|
    render RUI::Links::Outline.new(
      icon: "edit",
      href: "#"
    ) { "Edit" }
    render RUI::Links::Primary.new(
      icon: "device-floppy",
      href: "#"
    ) { "Save" }
  end
end
```

## More Examples

Here are some examples of configurations you can achieve using this component.
STRING
      end

      div(class: "rui:grid rui:grid-cols-3 rui:gap-2") do
        render RUI::Card.new do |c|
          c.image { "https://placehold.co/100x35" }
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
          c.image { "https://placehold.co/100x35" }
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
            h.thumbnail { "https://placehold.co/40" }
            h.titles do |t|
              t.title { "Card" }
            end
          end
          c.image { "https://placehold.co/100x35" }
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
          c.image { "https://placehold.co/100x35" }
          c.body do
            "This card is amazing! Look at all of the nifty things it can do."
          end
          c.footer do |f|
            render RUI::Links::Primary.new(icon: "device-floppy", href: "#") { "Save" }
          end
        end
        render RUI::Card.new do |c|
          c.image { "https://placehold.co/100x35" }
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
