Rails.application.routes.draw do
  root "books#top"
  get "books" => "books#index"
end
