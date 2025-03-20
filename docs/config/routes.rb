Rails.application.routes.draw do
  root "info#about"
  get "installation", to: "info#installation"
  get "contributing", to: "info#contributing"


  # Components
  get "components/alerts", as: :alert_component
  get "components/badges", as: :badge_component
  get "components/buttons", as: :button_component
  get "components/cards", as: :card_component
  get "components/code_blocks", as: :code_block_component
  get "components/forms", as: :form_component
  get "components/headings", as: :heading_component
  get "components/links", as: :link_component
  get "components/lists", as: :list_component
  get "components/markdown", as: :markdown_component
  get "components/navigation", as: :navigation_component
  get "components/slideout", as: :slideout_component
  get "components/table", as: :table_component
  get "components/text", as: :text_component

  # Examples
  get "examples/flash_example", as: :flash_example
  get "examples/flash_trigger", as: :flash_trigger
  get "examples/slideout", as: :slideout_example
end
