module Views
  module Layouts
    class ApplicationLayout < Views::Base
      include Phlex::Rails::Helpers::Flash

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
            javascript_include_tag "application", "data-turbo-track": "reload", type: "module"
          end

          body(class: "flex flex-col", data: { controller: "navigation" }) do
            flash.each do |type, message|
              render RUI::Alert.new(type) { message }
            end
            div(class: "fixed top-0 left-0 right-0 bg-white flex flex-col z-50") do
              section class: "flex flex-row items-center gap-3 border-b border-zinc-300 p-3 lg:px-10" do
                img(src: asset_path("logo.svg"), class: "size-8")
                span(class: "font-mono") { "RelayUI" }
              end
              section(class: "lg:hidden px-3 py-1.5 border-b border-zinc-300") do
                button(class: "hover:cursor-pointer hover:bg-zinc-200 p-1.5 rounded-lg", data: { action: "navigation#toggle" }) do
                  div(class: "size-5") do
                    render RUI::Icon.new("menu")
                  end
                end
              end
            end
            div(class: "flex flex-row mt-25.5") do
              render RUI::Navigation::Sidebar.new do |nav|
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
                  href: alert_component_path,
                  selected: on?(alert_component_path)
                ) { "Alerts" }
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
              end
              main(class: "p-5 lg:p-10 max-w-[800px]") { yield }
            end
          end
        end
      end

      private

      def on?(path) = request.path == path
    end
  end
end
