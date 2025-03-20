# frozen_string_literal: true

class Views::Components::IconsView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown::Safe.new do
<<-STRING
# Icons

`RUI::Icon` stuff

## Examples
STRING
      end

      div class: "flex flex-row gap-3" do
        div class: "size-10" do
          render RUI::Icon.new("star")
        end
      end

      render RUI::Markdown::Unsafe.new do
<<-STRING
## Code

```ruby
div class: "size-10" do
  render RUI::Icon.new("star")
end
```


STRING
      end
    end
  end
end
