Rails.application.routes.draw do
  get 'wifis' => 'wifis#index'
  get 'searchs' => 'wifis#search'
  root "wifis#index"
end
