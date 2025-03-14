module Views
  module Layouts
    class ApplicationLayout < Views::Base
      register_value_helper :csrf_meta_tags
      register_value_helper :csp_meta_tag
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
                nav.icon_link(href: root_path, icon: "home") { "About RelayUI" }
                nav.icon_link(href: installation_path, icon: "rocket") { "Installation" }
                nav.icon_link(href: contributing_path, icon: "hexagon-plus") { "Contributing" }
                nav.section_heading { "Components" }
                nav.text_link(badge_component_path) { "Badges" }
                nav.text_link(button_component_path) { "Buttons" }
                nav.text_link(code_block_component_path) { "Code Blocks" }
                nav.text_link(heading_component_path) { "Headings" }
                nav.text_link(link_component_path) { "Links" }
                nav.text_link(list_component_path) { "Lists" }
                nav.text_link(markdown_component_path) { "Markdown" }
                nav.text_link(navigation_component_path) { "Navigation" }
                nav.text_link(slideout_component_path) { "Slideouts" }
                nav.text_link(text_component_path) { "Text" }
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
