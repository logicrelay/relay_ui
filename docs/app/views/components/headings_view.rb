class Views::Components::HeadingsView < Views::Base
  QUICK_BROWN_FOX = "The quick brown fox jumps over the lazy dog"

  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown::Unsafe.new do
<<-MARKDOWN
# Headings

To render a heading, use the `RUI::Markdown` component. For more information, see the [RUI::Markdown](#{markdown_component_path}) documentation.

## Examples

# Heading 1
## Heading 2
### Heading 3
#### Heading 4
##### Heading 5
###### Heading 6

## Code

```ruby
render RUI::Markdown::Safe.new { "# Heading 1" }
render RUI::Markdown::Safe.new { "## Heading 2" }
render RUI::Markdown::Safe.new { "### Heading 3" }
render RUI::Markdown::Safe.new { "#### Heading 4" }
render RUI::Markdown::Safe.new { "##### Heading 5" }
render RUI::Markdown::Safe.new { "###### Heading 6" }
```
MARKDOWN
      end
    end
  end
end
