# frozen_string_literal: true

class Views::Components::ListsView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown::Unsafe.new do
<<-MARKDOWN
# Lists

To render a list, use the `RUI::Markdown` component. For more information, see the [RUI::Markdown](#{markdown_component_path}) documentation.

## Unordered Lists

- Here's a list item
- Here's another list item
- Here's item #3

```ruby
  render RUI::Markdown::Safe.new do
<<-STRING
- Here's a list item
- Here's another list item
- Here's item #3
STRING
  end
```

## Ordered Lists

1. Here's a list item
1. Here's another list item
1. Here's item #3

```ruby
  render RUI::Markdown::Safe.new do
<<-STRING
1. Here's a list item
1. Here's another list item
1. Here's item #3
STRING
  end
```
MARKDOWN
      end
    end
  end
end
