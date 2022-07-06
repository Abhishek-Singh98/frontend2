Rails.application.routes.draw do
  resources :gyms
  resources :trainers
  resources :reviews, only: [:show,:index,:new,:create,:edit,:update,:destroy]
  resources :trainees, only: [:show,:index,:new,:create,:edit,:update,:destroy]
  root 'home#home'
  get'/SignUp', to: 'home#create'
  get'About' , to: 'home#about'
  get'/Main' , to: 'home#first'

end
