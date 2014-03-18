BooksAppWithMailer::Application.routes.draw do
  resources :books
  get 'sendbuyermessage' => 'books#sendbuyermessage'


  devise_for :users
  resources :greetings

end
