Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get '/elements',  to: 'static_pages#elements'
  get '/generic',   to: 'static_pages#generic'
  get '/intro',     to: 'posts#intro'
  get '/notfound',  to: 'static_pages#page_not_found'
end
