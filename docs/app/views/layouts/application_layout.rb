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
            javascript_include_tag "application", "relay_ui/dist/relay_ui", "data-turbo-track": "reload", type: "module"
            link rel: "stylesheet", href: "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/styles/github-dark.min.css"
            script src: "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/highlight.min.js"
            script src: "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/languages/ruby.min.js"
          end

          body do
            main class: "container mx-auto my-6" do
              div(class: "flex flex-row gap-3") do
                div(class: "flex flex-col w-48") do
                  a(href: root_path) { "About" }
                  p(class: "font-semibold") { "Components" }
                  a(href: heading_component_path) { "Headings" }
                end
                div { yield }
              end
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
