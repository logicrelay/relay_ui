Rails.application.routes.draw do
  root "info#about"
  get "about", to: "info#about"

  # Components
  get "components/code_blocks", to: "components#code_blocks", as: :code_block_component
  get "components/headings", to: "components#headings", as: :heading_component
  get "components/lists", to: "components#lists", as: :list_component
  get "components/text", to: "components#text", as: :text_component
end
