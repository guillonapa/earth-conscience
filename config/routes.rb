Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  
  get '/elements',  to: 'static_pages#elements'
  get '/generic',   to: 'static_pages#generic'
  get '/notfound',  to: 'static_pages#page_not_found'

  get '/intro',     to: 'posts#intro'
  get '/first_post', to: 'posts#first_post'
  get '/new_home',  to: 'posts#new_home'
  get '/zero_waste_101', to: 'posts#zero_waste_101'
  get '/california', to: 'posts#california'
  get '/suicide_prevention', to: 'posts#suicide_prevention'
  get '/eating_to_fight_climate_change', to: 'posts#eating_to_fight_climate_change'
  get '/what_to_do_about_climate_change', to: 'posts#what_to_do_about_climate_change'
  post '/like',     to: 'posts#update_likes'

  get '/all',       to: 'sections#all'
  get '/environmentalism', to: 'sections#environmentalism'
  get '/global',    to: 'sections#global_identity'
  get '/health',    to: 'sections#mental_and_physical_health'
  get '/plantbased', to: 'sections#plant_based_living'
end
