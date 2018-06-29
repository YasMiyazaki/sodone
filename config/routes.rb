Rails.application.routes.draw do
  root to: 'toppages#index'
  
  get '/:locale' => 'toppages#index'
  
  #参考: https://qiita.com/lhside/items/52623ca8d09858fc7d6e
  scope "(:locale)", locale: /#{I18n.available_locales.map(&:to_s).join('|')}/ do
  
    get 'signup', to: 'users#new'
    resources :users, only: [:show, :new, :create, :update]
    resources :posts, only: [:show]
    
    resources :comments, only: [:create, :destroy]
    
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'  
    
    get 'contents', to: 'toppages#contents' 
    
    resources :attentions, only: [:create, :destroy]
    
    resources :sitepages, only: [:terms]
    get 'terms', to: 'sitepages#terms'
    
  end
end
