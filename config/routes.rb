SamAndJamieWedding::Application.routes.draw do
  get 'home' => 'static_pages#home'

  root to: 'orders#new'
  resources :orders, only: [:new, :create]
end
