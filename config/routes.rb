Rails.application.routes.draw do
  root 'statics#home'

  get '/about', to: 'statics#about'
  get '/faq', to: 'statics#faq'
end
