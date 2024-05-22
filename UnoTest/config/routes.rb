#Para ver todas las rutas disponibles: rails routes --expanded
Rails.application.routes.draw do
  root 'pages#home'
  #se puede de cualquiera de las 2 formas, las 2 rutas buscan el mismo controlador y vista
  #la ruta /about, busca el controlador "pages", la vista y metodo: "about" 
  get 'about', :to => 'pages#about'
  get 'about2', to: 'pages#about'

  #Para ver todas las rutas de un solo controlador: rails routes --expanded -c=articles
  resources :articles #integra todo un conjunto de rutas para el modelo articles:
  #Controller#Action | articles#index    GET    /articles
  #Controller#Action | articles#create   POST   /articles
  #Controller#Action | articles#new      GET    /articles/new
  #Controller#Action | articles#edit     GET    /articles/:id
  #Controller#Action | articles#show     GET    /articles/:id
  #Controller#Action | articles#update   PATCH  /articles/:id
  #Controller#Action | articles#update   PUT    /articles/:id
  #Controller#Action | articles#destroy  DELETE /articles/:id

  #De esta forma solo genera las rutas q agreguemos en el array
  resources :article_fs, only: [:show] 
end
