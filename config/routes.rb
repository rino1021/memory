Rails.application.routes.draw do
 devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#get 'top' => 'homes#top'
root to: 'homes#top'
get 'homes/about'
# get 'photos/new'
# post 'photos' => 'photos#create'
# get 'photos' => 'photos#index'
# get 'photos/:id' => 'photos#show', as: 'photo'
# get 'photos/:id/edit' =>'photos#edit', as: 'edit_photo'
# patch 'photo/:id' => 'photos#update', as: 'update_photo'
# delete 'photos/:id' => 'photos#destroy', as: 'destroy_photo'
resources :photos
resources :group, except: [:destroy]
end

