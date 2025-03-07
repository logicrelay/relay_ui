class Views::Info::AboutView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      div class: "flex flex-col gap-8" do
        render RelayUi::Headings::H1.new { "About RelayUI" }
        render RelayUi::Text::Medium.new do
          "RelayUI is a set of highly prescriptive UI elements written in Phlex and designed for Ruby and Rails applications. The package is maintained by the team at LogicRelay, and its core purpose is to make it faster, easier and cheaper to create UIs for business apps."
        end
        div(class: "bg-red-50 border border-red-700 text-red-700 p-5 rounded") do
          div(class: "flex flex-row items-center gap-2") do
            div class: "size-6" do
              render RelayUi::Icon.new("alert-circle")
            end
            span(class: "font-bold") { "Warning" }
          end
          p do
            "This project is extremely new, and we're still working out the kinks. We're using it in production, but we're not yet ready to recommend it for everyone. It's highly likely that the API will change frequently in ways that will be extremely disruptive to your codebase. Use at your own risk for now, and we'll update this warning when we're ready to recommend it."
          end
        end
        render RelayUi::Headings::H2.new { "Why RelayUI?" }
        render RelayUi::Text::Medium.new do
          "There has been some great work on similar UI kits by other developers, but we have found that other available UI kits tend to prioritize flexibility and customization over ease of use and speed of development. This is, of course, what one would do if they were trying to design a UI kit for the masses! RelayUI unapologetically prioritizes ease of use at the cost of flexibility. For this reason, it won't be for everyone, but if you're building business apps and you want to get it done quickly, RelayUI is for you."
        end
        render RelayUi::Headings::H2.new { "How does RelayUI work?" }
        render RelayUi::Text::Medium.new do
          "RelayUI provides a namespace of components that you can use in your Ruby views. Whereas we've seen other UI kits rely heavily on object parameters or composition to deliver component variants, we rely heavily on inheritance and subclassing. So, for example, a primary button in our design system is `RUI::Buttons::Primary` instead of `RUI::Buttons(variant: :primary)`. This exposes key variants as part of your IDE's autocomplete, making it easier to discover and use the components."
        end
      end
    end
  end
end
