class Views::Components::BadgesView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown::Safe.new do
<<-STRING
# Badges

`RUI::Badge` is a namespace containing several badge components that can be used to add visual indicators to your RelayUi application. Badges are useful for displaying status information, such as the number of unread messages in a user's inbox or the current state of a record in a database.

## Examples
STRING
      end

      div class: "flex flex-row gap-3" do
        render RUI::Badges::Blue.new { "Blue Badge" }
        render RUI::Badges::Gray.new { "Gray Badge" }
        render RUI::Badges::Green.new { "Green Badge" }
        render RUI::Badges::Purple.new { "Purple Badge" }
        render RUI::Badges::Red.new { "Red Badge" }
        render RUI::Badges::Yellow.new { "Yellow Badge" }
      end

      render RUI::Markdown::Unsafe.new do
<<-STRING
## Code

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
