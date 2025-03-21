# frozen_string_literal: true

class Views::Components::HeadingsView < Views::Base
  QUICK_BROWN_FOX = "The quick brown fox jumps over the lazy dog"

  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown::Unsafe.new do
<<-STRING
# Headings

To render a heading, use the `RUI::Markdown` components. For more information, see the [RUI::Markdown](#{markdown_component_path}) documentation.

# Heading 1

```ruby
render RUI::Markdown::Safe.new { "# Heading 1" }
```

## Heading 2

```ruby
render RUI::Markdown::Safe.new { "## Heading 2" }
```

### Heading 3

```ruby
render RUI::Markdown::Safe.new { "### Heading 3" }
```

#### Heading 4

```ruby
render RUI::Markdown::Safe.new { "#### Heading 4" }
```

##### Heading 5

```ruby
render RUI::Markdown::Safe.new { "##### Heading 5" }
```

###### Heading 6

```ruby
render RUI::Markdown::Safe.new { "###### Heading 6" }
```
STRING
      end
    end
  end
end
