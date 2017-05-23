Rails.application.routes.draw do
	#root 'welcome#index' #From Heroku
	#From TutorialsPoint
	get 'organization/list' 
	get 'organization/new'
	post 'organization/create'
	patch 'organization/update'
	get 'organization/list'
	get 'organization/show'
	get 'organization/edit'
	get 'organization/delete'
	get 'organization/update'
	get 'organization/show_organizationtypes'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
