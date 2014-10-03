Rails.application.routes.draw do
  root 'statics#home', as: :home

  get '/about', to: 'statics#about', as: :about
  get '/faq', to: 'statics#faq', as: :faq
  get '/buy', to: 'statics#buy', as: :buy
end
