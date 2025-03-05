class Views::Components::NavigationView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RelayUi::Headings::H1.new { "Navigation" }
      render RelayUi::Text::Large.new do
        "This section demonstrates the different navigation styles available in RelayUi."
      end

      render Components::Description.new("Side Navigation") do
        render RelayUi::Navigation.new do |n|
          n.icon_link(href: root_path, icon: "home") { "Home" }
          n.icon_link(href: root_path, icon: "help-hexagon") { "About" }
          n.section_heading { "Components" }
          n.coming_soon { "Alerts" }
          n.text_link(root_path) { "Badges" }
          n.text_link(navigation_component_path) { "Navigation" }
          n.section_heading { "Another Section" }
          n.coming_soon { "Disabled" }
        end
        render RelayUi::CodeBlock.new do
<<-RUBY
render RelayUi::Navigation.new do |n|
  n.icon_link(href: root_path, icon: "home") { "Home" }
  n.icon_link(href: root_path, icon: "help-hexagon") { "About" }
  n.section_heading { "Components" }
  n.coming_soon { "Alerts" }
  n.text_link(root_path) { "Badges" }
  n.text_link(navigation_component_path) { "Navigation" }
  n.section_heading { "Another Section" }
  n.coming_soon { "Disabled" }
end
RUBY
        end
      end
    end
  end
end
