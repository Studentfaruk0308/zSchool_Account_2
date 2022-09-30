Rails.application.routes.draw do
  resources :students
  resources :teachers
  resources :classrooms
  resources :salarypayments
  resources :feepayments
  resources :salaries
  resources :tuitionfees

  root 'welcome#home'

  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  
  # get '/auth/github/callback' => 'sessions#create'

  # get '/auth/developer/callback' => 'sessions#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
