Rails.application.routes.draw do

  devise_for :cookers, controllers: { registrations: "cookers/registrations", sessions: "cookers/sessions", omniauth_callbacks: "cookers/omniauth_callbacks" }

  devise_scope :cooker do
    get "/login" => "cookers#index"
    get "/registration" => "cookers/registrations#new"
    get "/logout" => "cookers/sessions#destroy"
  end

  resources :profiles

  get 'meals/:id/buy' => 'meals#buy', as: 'buy_meal'
  get 'meals/:id/pay' => 'meals#pay', as: 'pay_meal'
  get 'meals/managing' => 'meals#managing'

  resources :meals

  get 'feed' => 'meals#index'

  root to: "home#index"
end
