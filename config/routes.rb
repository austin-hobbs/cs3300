Rails.application.routes.draw do
  devise_for :users
  root "projects#index"
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope '/manage' do
    resources :projects
  end
end
