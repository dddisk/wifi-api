Rails.application.routes.draw do
  get 'wifis' => 'wifis#index'
  post 'wifis' => 'wifis#create'
  root "wifis#index"
end
