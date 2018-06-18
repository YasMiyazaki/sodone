Rails.application.routes.draw do
  root to: 'toppages#index'
  
  get '/:locale' => 'toppages#index'
  
  #参考: https://qiita.com/lhside/items/52623ca8d09858fc7d6e
  scope "(:locale)", locale: /#{I18n.available_locales.map(&:to_s).join('|')}/ do
  
    get 'signup', to: 'users#new'
    resources :users, only: [:show, :new, :create]
  
  end
    


end
