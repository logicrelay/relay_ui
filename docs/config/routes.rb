Rails.application.routes.draw do
  mount RelayUi::Engine => "/relay_ui"
  root "home#index"
end
