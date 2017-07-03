Rails.application.routes.draw do
  resources :atividades
  resources :quimica_performances
  resources :roda_equ_vidas
  resources :ferramenta
  resources :coachees
  resources :usuarios

  post 'authenticate', to: 'authentication#authenticate'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
