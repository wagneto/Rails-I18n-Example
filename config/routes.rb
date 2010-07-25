Groceries::Application.routes.draw do |map|
  resources :products, :only => [:index]
  
  root :to => "products#index"
end
