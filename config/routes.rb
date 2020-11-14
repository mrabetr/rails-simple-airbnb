Rails.application.routes.draw do
  root to: 'flats#index'
  resources :flats, except: [:index] do
    collection do
      get :top
    end
  end
end
