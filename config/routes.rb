Rails.application.routes.draw do
  	get 'events/index'
	get 'events', to: 'events#index'
	get 'events/:page', to: 'events#index'

	get 'events/category/:id', to: 'events#category'
	get 'events/category/:id/:page', to: 'events#category'

	get 'events/show/:id', to: 'events#show'

	get 'event_posts/index'
	get 'event_posts', to: 'event_posts#index'

	get 'event_posts/delete/:id', to: 'event_posts#delete'
	post 'event_posts/delete', to: 'event_posts#delete'
	post 'event_posts/delete/:id', to: 'event_posts#delete'

	get 'event_posts/add'
	post 'event_posts/add'

	get 'event_posts/:id', to: 'event_posts#edit'
	patch 'event_posts/:id', to: 'event_posts#edit'

	get 'eevnt_posts/delete'

	get 'event_categories/index'
	get 'event_categories', to: 'event_categories#index'

	get 'event_categories/add'
	post 'event_categories/add'
	
	get 'event_categories/:id', to: 'event_categories#edit'
	patch 'event_categories/:id', to: 'event_categories#edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
