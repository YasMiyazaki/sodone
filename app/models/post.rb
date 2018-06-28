class Post < ApplicationRecord
  
  #Globalize
  translates :title, :category, :headline, :content

  has_many :attentions
  has_many :users, through: :attentions
  has_many :wants
  has_many :want_users, through: :wants, class_name: 'User', source: :user
  has_many :offers
  has_many :offer_users, through: :offers, class_name: 'User', source: :user
  
  has_many :comments
  
end
