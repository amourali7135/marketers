Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :portfolio, shallow: true do   #skipping join table
    resources :work#, only: [:create, :new, :index] may not even need it nested
  end

  resources :proposal, shallow: true do   #skipping join table
    resources :jobbid#, only: [:create, :new, :index] may not even need it nested
  end

  resources :question, shallow: true do   #skipping join table
    resources :answer#, only: [:create, :new, :index] may not even need it nested
  end

  resources :consultation, shallow: true do   #skipping join table
    resources :consultationreceipt, only: [:create] 
    resources :consultationsession, only: [:create, :new]
  end

  resources :service, except: [:index], shallow: true do   #skipping join table
    resources :order, shallow: true do #, only: [:create, :new, :index] may not even need it nested
      resources :review
      resources :servicereceipt, only: [:create, :show] #maybe remove show
    end
  end

end
