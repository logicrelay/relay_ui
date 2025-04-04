# frozen_string_literal: true

class Views::Utilities::TailwindMergerView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown::Unsafe.new do
<<-MARKDOWN
# Tailwind Merger

`RUI::TailwindMerger` is a Singleton wrapper class for the `tailwind_merge` gem. It provides a simple interface to merge Tailwind CSS classes, ensuring that the final output is optimized and free of conflicts.

[Click here](https://github.com/gjtorikian/tailwind_merge) for more information on the `tailwind_merge` gem.

## Parameters

```ruby
RUI::TailwindMerger.instance.merge(base_classes, given_classes)
```

`base_classes` _**(string)**_ (required)
→ The primary classes to be used as the base for the merge.

`given_classes` _**(string)**_ (required)
→ The classes to be merged with the base classes.

## Example

```ruby
base_classes = "bg-blue-500 text-white rounded"
given_classes = "bg-red-500 text-black"

RUI::TailwindMerger.instance.merge(base_classes, given_classes)
# => "bg-red-500 text-black rounded"
```

MARKDOWN
      end
    end
  end
end
