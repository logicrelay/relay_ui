Rails.application.routes.draw do
  root "info#about"
  get "about", to: "info#about"

  # Components
  get "components/buttons", as: :button_component
  get "components/code_blocks", as: :code_block_component
  get "components/headings", as: :heading_component
  get "components/lists", as: :list_component
  get "components/text", as: :text_component
end
