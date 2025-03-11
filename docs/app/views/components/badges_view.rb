class Views::Components::BadgesView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown.new do
<<-STRING
# Badges

`RUI::Badge` is a namespace containing several badge components that can be used to add visual indicators to your RelayUi application. Badges are useful for displaying status information, such as the number of unread messages in a user's inbox or the current state of a record in a database.

## Examples
STRING
      end

      render RUI::Badge::Blue.new { "Blue Badge" }
      render RUI::Badge::Gray.new { "Gray Badge" }
      render RUI::Badge::Green.new { "Green Badge" }
      render RUI::Badge::Purple.new { "Purple Badge" }
      render RUI::Badge::Red.new { "Red Badge" }
      render RUI::Badge::Yellow.new { "Yellow Badge" }

      render RUI::Markdown.new(html_safe: false) do
<<-STRING
## Code

```ruby
render RUI::Badge::Blue.new { "Blue Badge" }
render RUI::Badge::Gray.new { "Gray Badge" }
render RUI::Badge::Green.new { "Green Badge" }
render RUI::Badge::Purple.new { "Purple Badge" }
render RUI::Badge::Red.new { "Red Badge" }
render RUI::Badge::Yellow.new { "Yellow Badge" }
```


STRING
      end
    end
  end
end
