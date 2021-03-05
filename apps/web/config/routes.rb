# Configure your routes here
# See: https://guides.hanamirb.org/routing/overview
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
get '/tasks/:id', to: 'tasks#show'
get '/tasks', to: 'tasks#index'
