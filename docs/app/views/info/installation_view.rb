class Views::Info::InstallationView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown.new(html_safe: false) do
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

### Or install it directly:

```shell
gem install relay_ui
```

### Include the gem's stylesheet in your application layout:

```ruby
stylesheet_link_tag "relay_ui/relay_ui", media: "all"
```

That's it! All of the basic functionality of the UI kit is now available to you. For certain components that require additional elements (like stimulus controllers), you'll need to include those separately. They will be documented in the component's usage instructions.
STRING
      end
    end
  end
end
