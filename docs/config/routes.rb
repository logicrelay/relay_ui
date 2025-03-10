Rails.application.routes.draw do
  root "info#about"
  get "installation", to: "info#installation"

  # Components
  get "components/badges", as: :badge_component
  get "components/buttons", as: :button_component
  get "components/code_blocks", as: :code_block_component
  get "components/headings", as: :heading_component
  get "components/lists", as: :list_component
  get "components/navigation", as: :navigation_component
  get "components/slideout", as: :slideout_component
  get "components/text", as: :text_component

  # Examples
  get "examples/slideout", as: :slideout_example
end
