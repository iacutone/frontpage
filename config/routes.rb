Frontpage::Application.routes.draw do
  resources :articles

  root :to => 'articles#show'
end
