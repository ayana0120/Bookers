Rails.application.routes.draw do
  root "books#top"
  get "books" => "books#index"
  post "create" => "books#create"
end
