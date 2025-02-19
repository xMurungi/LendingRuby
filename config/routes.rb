
Rails.application.routes.draw do
  root 'books#index'
  
  resources :books do
    resources :borrowings, only: [:create] do
      patch :return, on: :collection
    end
  end
end
