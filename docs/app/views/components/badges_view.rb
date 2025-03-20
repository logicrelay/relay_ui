# frozen_string_literal: true

class Views::Components::BadgesView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown::Unsafe.new do
<<-STRING
# Badges

`RUI::Badges` is a namespace containing badge variants. Badges are useful for displaying status information, such as the number of unread messages in a user's inbox or the current state of a record.

## Parameters

```ruby
RUI::Badges::[Variant].new { &block }
```

`&block` _**(block)**_ (required)
→ The text content to be displayed inside the badge.

## Variants
STRING
      end

      div class: "my-4 inline-flex flex-wrap gap-3" do
        render RUI::Badges::Blue.new { "Blue Badge" }
        render RUI::Badges::Gray.new { "Gray Badge" }
        render RUI::Badges::Green.new { "Green Badge" }
        render RUI::Badges::Purple.new { "Purple Badge" }
        render RUI::Badges::Red.new { "Red Badge" }
        render RUI::Badges::Yellow.new { "Yellow Badge" }
      end

            render RUI::Markdown::Unsafe.new do
<<-STRING
```ruby
render RUI::Badges::Blue.new { "Blue Badge" }
render RUI::Badges::Gray.new { "Gray Badge" }
render RUI::Badges::Green.new { "Green Badge" }
render RUI::Badges::Purple.new { "Purple Badge" }
render RUI::Badges::Red.new { "Red Badge" }
render RUI::Badges::Yellow.new { "Yellow Badge" }
```


STRING
      end
    end
  end
end
