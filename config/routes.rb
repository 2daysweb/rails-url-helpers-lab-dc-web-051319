Rails.application.routes.draw do
get '/students', to: 'students#index'  

get '/students/:id', to: 'students#show', as: 'student' 

get '/students/:id/activate', to: 'students#activate', as: 'activate'

get '/students/:id/edit', to: 'students#edit', as: 'edit'

patch '/students/:id', to: 'students#update', as: 'update'


end
