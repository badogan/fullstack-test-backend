Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/signin', to: 'users#signin'
  post '/signup', to: 'users#signup'
  get '/validproduct', to: 'product#validproduct'
  get '/validsizes', to: 'size#validsizes'
  post '/neworder', to: 'order#neworder'
  get '/getcurrentuserorders', to: 'order#getcurrentuserorders'
  post '/history', to: 'history#newinput'
end
