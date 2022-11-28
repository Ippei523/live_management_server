Rails.application.routes.draw do
  resources :youtube_participant_info
  resources :youtube_participations
  resources :unite_live_info
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
