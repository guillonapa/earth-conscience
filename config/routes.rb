Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get '/elements',  to: 'static_pages#elements'
  get '/generic',   to: 'static_pages#generic'
  get '/intro',     to: 'posts#intro'
  get '/notfound',  to: 'static_pages#page_not_found'
  get '/new_home',  to: 'posts#new_home'
  get '/zero_waste_101', to: 'posts#zero_waste_101'
  get '/california', to: 'posts#california'
  get '/suicide_prevention', to: 'posts#suicide_prevention'
  get '/eating_to_fight_climate_change', to: 'posts#eating_to_fight_climate_change'
  get '/what_to_do_about_climate_change', to: 'posts#what_to_do_about_climate_change'
  post '/like',     to: 'posts#update_likes'
end
