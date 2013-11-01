GolfApp01::Application.routes.draw do


root 'members#index'

get '/members' => 'members#index'

get 'members/new' => 'members#new', as: 'new_member'
post 'members' => 'members#create'




get 'members/:id' => 'members#show', as: 'member'

get 'courses' => 'venues#index', as: 'courses'

end
