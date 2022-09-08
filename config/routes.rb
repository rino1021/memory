Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get 'top' => 'homes#top'
get 'photos/new'
get 'photos/edit'
post 'photos' => 'photos#create'
get 'photos' => 'photos#index'
get 'photos/:id' => 'photos#show', as: 'photo'
resources :photos ,only: [:new, :index, :show, :edit, :update, :destroy]
end

