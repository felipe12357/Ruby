Rails.application.routes.draw do
  resources :articles
  root 'pages#home'
  #se puede de cualquiera de las 2 formas, las 2 rutas buscan el mismo controlador y vista
  #la ruta /about, busca el controlador "pages", la vista y metodo: "about" 
  get 'about', :to => 'pages#about'
  get 'about2', to: 'pages#about'
end
