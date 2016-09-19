Rails.application.routes.draw do
  controller :pages do
    get :home
    get :about
    get :faq
    get :help_center
    get :news
    get :black_list
  end

  resources :products

  root 'pages#home'
end
