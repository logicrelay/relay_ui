Rails.application.routes.draw do
  mount RelayUi::Engine => "/relay_ui"
  root "info#about"

  # About
  get "about", to: "info#about"

  # Components
  get "components/headings", to: "components#headings", as: :heading_component
end
