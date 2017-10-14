Rails.application.routes.draw do
  get 'wifis' => 'wifis#index'
  root "wifis#index"
  resources :wifis do
    collection{ get "search" }
  end
end
