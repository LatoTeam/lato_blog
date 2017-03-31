LatoBlog::Engine.routes.draw do
  root 'back/back#back'

  resources :posts, module: 'back'

end
