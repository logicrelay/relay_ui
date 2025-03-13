module Views
  module Layouts
    class ApplicationLayout < Views::Base
      register_value_helper :csrf_meta_tags
      register_value_helper :csp_meta_tag
      register_value_helper :request
      register_output_helper :stylesheet_link_tag
      register_output_helper :javascript_include_tag


      def view_template
        doctype

        html do
          head do
            title { "RelayUI" }
            meta name: "viewport", content: "width=device-width,initial-scale=1"
            meta name: "apple-mobile-web-app-capable", content: "yes"
            meta name: "mobile-web-app-capable", content: "yes"
            csrf_meta_tags
            csp_meta_tag

            link rel: "icon", href: "/icon.png", type: "image/png"
            link rel: "icon", href: "/icon.svg", type: "image/svg+xml"
            link rel: "apple-touch-icon", href: "/icon.png"

            stylesheet_link_tag :app, "data-turbo-track": "reload"
            stylesheet_link_tag "relay_ui/relay_ui", media: "all"
            javascript_include_tag "application", "data-turbo-track": "reload", type: "module"
          end

          body do
            main class: "flex flex-row gap-10" do
              render RUI::Navigation.new do |nav|
                nav.icon_link(href: root_path, selected: request.path == root_path, icon: "home") { "About RelayUI" }
                nav.icon_link(href: installation_path, selected: request.path == installation_path, icon: "rocket") { "Installation" }
                nav.icon_link(href: contributing_path, selected: request.path == contributing_path, icon: "hexagon-plus") { "Contributing" }
                nav.section_heading { "Components" }
                nav.text_link(href: badge_component_path, selected: request.path == badge_component_path) { "Badges" }
                nav.text_link(href: button_component_path, selected: request.path == button_component_path) { "Buttons" }
                nav.text_link(href: code_block_component_path, selected: request.path == code_block_component_path) { "Code Blocks" }
                nav.text_link(href: heading_component_path, selected: request.path == heading_component_path) { "Headings" }
                nav.text_link(href: link_component_path, selected: request.path == link_component_path) { "Links" }
                nav.text_link(href: list_component_path, selected: request.path == list_component_path) { "Lists" }
                nav.text_link(href: markdown_component_path, selected: request.path == markdown_component_path) { "Markdown" }
                nav.text_link(href: navigation_component_path, selected: request.path == navigation_component_path) { "Navigation" }
                nav.text_link(href: slideout_component_path, selected: request.path == slideout_component_path) { "Slideouts" }
                nav.text_link(href: text_component_path, selected: request.path == text_component_path) { "Text" }
                nav.section_heading { "Coming Soon" }
                nav.coming_soon { "Accordions" }
                nav.coming_soon { "Alerts" }
                nav.coming_soon { "Cards" }
                nav.coming_soon { "Forms" }
                nav.coming_soon { "Profile Images" }
                nav.coming_soon { "Snackbars" }
                nav.coming_soon { "Tables" }
              end
              div(class: "max-w-[800px] py-10") { yield }
            end
            script do
              <<-JS
                hljs.highlightAll()
              JS
            end
          end
        end
      end
    end
  end
end
