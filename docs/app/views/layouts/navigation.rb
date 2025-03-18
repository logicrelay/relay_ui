class Views::Layouts::Navigation < Views::Base
  def view_template
    RUI::Navigation.new do |nav|
      nav.icon_link(
        href: root_path,
        selected: on?(root_path),
        icon: "home"
      ) { "About RelayUI" }
      nav.icon_link(
        href: installation_path,
        selected: on?(installation_path),
        icon: "rocket"
      ) { "Installation" }
      nav.icon_link(
        href: contributing_path,
        selected: on?(contributing_path),
        icon: "hexagon-plus"
      ) { "Contributing" }
      nav.section_heading { "Components" }
      nav.text_link(
        href: badge_component_path,
        selected: on?(badge_component_path)
      ) { "Badges" }
      nav.text_link(
        href: button_component_path,
        selected: on?(button_component_path)
      ) { "Buttons" }
      nav.text_link(
        href: card_component_path,
        selected: on?(card_component_path)
      ) { "Cards" }
      nav.text_link(
        href: code_block_component_path,
        selected: on?(code_block_component_path)
      ) { "Code Blocks" }
      nav.text_link(
        href: form_component_path,
        selected: on?(form_component_path)
      ) { "Forms" }
      nav.text_link(
        href: heading_component_path,
        selected: on?(heading_component_path)
      ) { "Headings" }
      nav.text_link(
        href: link_component_path,
        selected: on?(link_component_path)
      ) { "Links" }
      nav.text_link(
        href: list_component_path,
        selected: on?(list_component_path)
      ) { "Lists" }
      nav.text_link(
        href: markdown_component_path,
        selected: on?(markdown_component_path)
      ) { "Markdown" }
      nav.text_link(
        href: navigation_component_path,
        selected: on?(navigation_component_path)
      ) { "Navigation" }
      nav.text_link(
        href: slideout_component_path,
        selected: on?(slideout_component_path)
      ) { "Slideouts" }
      nav.text_link(
        href: table_component_path,
        selected: on?(table_component_path)
      ) { "Tables" }
      nav.text_link(
        href: text_component_path,
        selected: on?(text_component_path)
      ) { "Text" }
      nav.section_heading { "Coming Soon" }
      nav.coming_soon { "Accordions" }
      nav.coming_soon { "Alerts" }
      nav.coming_soon { "Profile Images" }
      nav.coming_soon { "Snackbars" }
    end
  end
end
