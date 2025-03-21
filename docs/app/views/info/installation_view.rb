# frozen_string_literal: true

class Views::Info::InstallationView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown::Unsafe.new do
<<-STRING
# Installation

### First, add the gem to your `Gemfile`:

```ruby
gem 'relay_ui'
```

### Then install your gems:

```shell
bundle install
```

That's it! All of the basic functionality of the UI kit is now available to you. For certain components that require additional elements (like stimulus controllers), you'll need to include those separately. They will be documented in the component's usage instructions.
STRING
      end
    end
  end
end
