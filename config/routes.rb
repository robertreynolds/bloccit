#Bloccit::Application.routes.draw do
#  get "welcome/index"

#  get "welcome/about"

#  root to: 'welcome#index'
#end


Bloccit::Application.routes.draw do

  resources :posts

  match "about" => 'welcome#about', via: :get

  root :to => 'welcome#index'
end
