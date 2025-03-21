# frozen_string_literal: true

class Views::Components::NavigationView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown::Unsafe.new do
<<-STRING
# Navigation

`RUI::Navigation` is a namespace wrapping multiple interrelated components that serve to deliver a usable, responsive navigation experience out of the box. The navigation menu is modeled after [TailwindCSS's own docs](https://tailwindcss.com/docs), because originality is overrated.

## Installation

In order to install the Navigation component, let's examine a working application layout structure:

```ruby
render RUI::Layout::Body do
  render RUI::Navigation::Top.new do |t|
    t.group { # Logo, additional nav, etc. }
  end
  render RUI::Layout::Page.new do
    render RUI::Navigation::Sidebar.new do |nav|
      # Main nav here...
    end
    render RUI::Layout::Main.new { yield }
  end
end
```

With this structure, you get a lot of things for free...
- A top bar that can hold logos, additional nav elements, etc. (RUI::Navigation::Top)
- A responsive sidebar navigation that is easy to populate and edit (RUI::Navigation::Sidebar)
- Wrappers for elements like the page body and main area that are also responsive and interact well with the core sidebar navigation element.

In order to handle user interactions, you will need to install the JavaScript controller from NPM:

```js
import NavigationController from "@relay_ui/navigation";
application.register("navigation", NavigationController);
```

## Components

There are two components in the Navigation namespace: `Top` and `Sidebar`.

### Top Navigation

`RUI::Navigation::Top` is a responsive top navigation bar that can hold logos, additional nav elements or other elements. It is always visible and sticky to the top of the page. Each group is spaced as far apart as possible, so that...
- With one group, the group is aligned to the left.
- With two groups, the first group is aligned to the left and the second group is aligned to the right.
- With three groups, the first group is aligned to the left, the second group is centered, and the third group is aligned to the right.

For an example of how to construct the elements of a top navigation component, see the code snippet below:

```ruby
render RUI::Navigation::Top.new do |t|
  t.group do
    img(src: asset_path("logo.svg"), class: "size-8")
    span(class: "font-mono") { "RelayUI" }
  end
end
```

### Sidebar Navigation

`RUI::Navigation::Sidebar` is a responsive navigation sidebar. On larger screens the sidebar is always visible and sticky to the top. On smaller screens the sidebar collapses to a menu button and can be toggled. For an example of how to construct the elements of a sidebar component, see the code snippet below:

```ruby
render RUI::Navigation::Sidebar.new do |n|
  n.icon_link(
    href: root_path,
    selected: request.path == root_path,
    icon: "home") { "Home" }
  n.icon_link(
    href: about_path,
    selected: request.path == about_path,
    icon: "help-hexagon") { "About" }
  n.section_heading { "Components" }
  n.text_link(
    href: badges_component_path,
    selected: request.path == badges_component_path) { "Badges" }
  n.text_link(
    href: navigation_component_path,
    selected: request.path == navigation_component_path) { "Navigation" }
end
```
STRING
      end
    end
  end
end
