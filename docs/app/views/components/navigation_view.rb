class Views::Components::NavigationView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown::Unsafe.new do
<<-STRING
# RUI::Navigation

`RUI::Navigation` is a component that provides a simple way to create a navigation menu. It is the components that is used to create the sidebar in the RelayUI documentation.

## Example

See the navigation sidebar to the left. For an example of how to construct the elements of a `RUI::Navigation` component, see the code snippet below:

```ruby
render RUI::Navigation.new do |n|
  n.icon_link(href: root_path, icon: "home") { "Home" }
  n.icon_link(href: root_path, icon: "help-hexagon") { "About" }
  n.section_heading { "Components" }
  n.coming_soon { "Alerts" }
  n.text_link(root_path) { "Badges" }
  n.text_link(navigation_component_path) { "Navigation" }
  n.section_heading { "Another Section" }
  n.coming_soon { "Disabled" }
end
```

## Elements

There are four elements available when creating a Navigation component:

### icon_link

A link with plain text and a state-aware icon.

#### Parameters
|Parameter|Type|Default|Description|
|---|---|---|---|
|`icon`|`string`|`nil`|The [tabler icon](https://tabler.io/icons) to be used for this link.|
|`href`|`string`|`nil`|The url or path this link will navigate to.|

### text_link

A link with plain text and a state-aware indicator.

#### Parameters
|Parameter|Type|Default|Description|
|---|---|---|---|
|`href`|`string`|`nil`|The url or path this link will navigate to.|

### section_heading

A combination of text and a separator to denote a new navigation section.

### coming_soon

A disabled link with a "Coming Soon" badge.

## Dependencies

The following gems have been included in RelayUI to make this component work:

- [tabler_icons_ruby](https://github.com/owaiswiz/tabler_icons_ruby) for rendering icons
STRING
      end
    end
  end
end
