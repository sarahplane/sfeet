Rails.application.routes.draw do
  controller :pages do
    get :home
  end

  resources :products

  root 'pages#home'
end
