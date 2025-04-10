Rails.application.routes.draw do

  devise_for :customers, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }

  namespace :admin do
    get 'homes', to: 'homes#top'
  end

  scope module: :public do
    root to: "homes#top"
    get 'homes/about', to: 'homes#about', as: :about
    resources :customers, only:[:show, :edit]
  end
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
