Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  
  resources :products
  resources :orders
  resources :customers

  get        '/customers/:id/notifications' => 'customers#notifications'
  get        '/customers/:id/orders/:order_id' => 'customers#show_order_history'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
