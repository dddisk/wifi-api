Rails.application.routes.draw do
  get 'wifis' => 'wifis#index'
  root "wifis#index"
end
