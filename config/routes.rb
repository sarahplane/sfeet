Rails.application.routes.draw do
  controller :pages do
    get :home
  end

  root 'pages#home'
end
