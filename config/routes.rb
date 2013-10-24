GolfApp01::Application.routes.draw do


root 'members#index'

get 'details/:id' => 'members#show', as: 'details'

get 'courses' => 'venues#index', as: 'courses'

end
