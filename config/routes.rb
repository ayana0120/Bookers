Rails.application.routes.draw do
  root "books#top"
  get "books" => "books#index"
  post "books" => "books#create"
  get "books/:id" => "books#show", as: "books"
  get "books/:id/edit" => "books#edit", as: "edit_books"
end
