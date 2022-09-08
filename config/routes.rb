Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get 'top' => 'homes#top'
post 'photos' => 'photos#create'
resources :photos ,only: [:new, :index, :show, :edit, :update, :destroy]
end

