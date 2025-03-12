class Views::Components::CodeBlocksView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown::Unsafe.new do
<<-MARKDOWN
# Code Blocks

To render a code block, use the `RUI::Markdown::Unsafe` component. This will render the code block as expected. For more information, see the [RUI::Markdown](#{markdown_component_path}) documentation.

```ruby
  render RUI::Markdown::Unsafe.new do
<<-STRING
```ruby
def some_method
  puts "Hello, world!"
end
```\ ‎
STRING
  end
```
MARKDOWN
      end
    end
  end
end
