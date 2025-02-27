Rails.application.routes.draw do
  root "info#about"
  get "about", to: "info#about"

  # Components
  get "components/headings", to: "components#headings", as: :heading_component
end
