class Views::Components::ListsView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown.new(html_safe: false) do
<<-MARKDOWN
# Lists

To render a list, use the `RUI::Markdown` component. For more information, see the [RUI::Markdown](#{markdown_component_path}) documentation.

## Unordered Lists

### Code

```ruby
  render RUI::Markdown.new do
<<-STRING
- Here's a list item
- Here's another list item
- Here's item #3
STRING
  end
```

### Example

- Here's a list item
- Here's another list item
- Here's item #3

## Ordered Lists

### Code

```ruby
  render RUI::Markdown.new do
<<-STRING
1. Here's a list item
1. Here's another list item
1. Here's item #3
STRING
  end
```

### Example

1. Here's a list item
1. Here's another list item
1. Here's item #3

MARKDOWN
      end
    end
  end
end
