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
            stylesheet_link_tag "relay_ui/relay_ui.css"
            stylesheet_link_tag "rouge_rails/rouge.css"
            javascript_include_tag "application", "data-turbo-track": "reload", type: "module"
          end

          body do
            main class: "container mx-auto my-6" do
              div(class: "flex flex-row gap-3") do
                div(class: "flex flex-col w-48") do
                  p { "Link" }
                end
                div { yield }
              end
            end
          end
        end
      end
    end
  end
end
