OutfitHero::Application.routes.draw do
  devise_for :users

  root :to => "home#index"

  get '/profile/:user_id', :controller => 'Pictures', :action => 'profile'

  #CREATE
  get '/profile/:user_id/add', :controller => 'Pictures', :action => 'add_picture'
  get '/profile/:user_id/add/:area', :controller => 'Pictures', :action => 'insert_picture'

end
