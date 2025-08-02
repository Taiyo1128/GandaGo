Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  
  resources :hotels
  
  resources :vlogs do
    resources :likes, only: [:create, :destroy]
  end

   resources :hotels do
    resources :likeas, only: [:create, :destroy]
  end

  resources :spots do
    resources :likebs, only: [:create, :destroy]
  end

  resources :restaurants do
    resources :likecs, only: [:create, :destroy]
  end

  get 'vlogs/top' => 'vlogs#top'

  get 'like' => 'vlogs#like'

  get 'likea' => 'hotels#like'

  get 'likeb' => 'spots#like'

  get 'likec' => 'restaurants#like'

  root 'vlogs#top'

  
end
