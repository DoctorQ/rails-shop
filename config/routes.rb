Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  get 'home/welcome'
  get 'home/about'
  get 'home/contact'
  root 'products#index'
  resources :products do
  	collection do
  		get :top # 排行榜功能
  	end
  	member do 
  		post :buy # 添加购物车
  	end
    resources :variants
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
