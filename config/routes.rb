Rails.application.routes.draw do
  get 'wifis' => 'wifis#index'
  get 'search' => 'wifis#search'
  root "wifis#index"
end
