Rails.application.routes.draw do
  # devise_for :admins
  devise_for :users
  resources :comments
  resources :posts
  root 'posts#index'
  get 'about_me' => 'static_pages#about_me'
  get 'destinations' => 'static_pages#destinations'
  get '/:name' => 'posts#user_posts', as: :user_posts


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
