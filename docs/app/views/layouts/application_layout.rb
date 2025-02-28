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
            link rel: "stylesheet", href: "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/styles/github-dark.min.css"
            script src: "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/highlight.min.js"
            script src: "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/languages/ruby.min.js"
          end

          body do
            main class: "flex flex-row gap-10" do
              div(class: "w-[400px]") do
                render RelayUi::Navigation.new do |nav|
                  nav.icon_link(href: root_path, icon: "home") { "About" }
                  nav.section_heading { "Components" }
                  nav.coming_soon { "Alerts" }
                  nav.text_link(badge_component_path) { "Badges" }
                  nav.text_link(button_component_path) { "Buttons" }
                  nav.text_link(code_block_component_path) { "Code Blocks" }
                  nav.text_link(heading_component_path) { "Headings" }
                  nav.text_link(list_component_path) { "Lists" }
                  nav.coming_soon { "Navigation" }
                  nav.coming_soon { "Profile Images" }
                  nav.coming_soon { "Slideouts" }
                  nav.text_link(text_component_path) { "Text" }
                end
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
