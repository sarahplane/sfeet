Rails.application.routes.draw do
  devise_for :users

  controller :pages do
    get :home
    get :about
    get :faq
    get :help_center
    get :news
    get :black_list
  end

  resources :products
  resources :tags, only: [:show, :destroy]

  root 'pages#home'
end




#1-1  Prefer to get away from controller (because calling out code on the other
# side as opposed to calling a resource)
#resources :pages, only: [] do
#  collection do
#      get :home, as: 'home'
#  end
#end
