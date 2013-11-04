GolfApp01::Application.routes.draw do


root 'members#index'

get '/members' => 'members#member_index'

get 'members/new' => 'members#new', as: 'new_member'
post 'members' => 'members#create'

get 'members/:id' => 'members#show', as: 'member'
delete 'members/:id' => 'members#destroy'


get 'members/:id/edit' => 'members#edit', as: 'edit_member'
patch 'members/:id' => 'members#update'

get 'members/:id/photo' => 'members#photo', as: 'add_photo'
patch 'members/:id' => 'members#update_photo'




get 'courses' => 'venues#index', as: 'courses'

end
