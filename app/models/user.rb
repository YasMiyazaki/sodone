class User < ApplicationRecord
  before_save { self.email.downcase! }
  validates :name, presence: true, length: { in: 5..20 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }  
  validates :nationality, presence: true

  has_secure_password
  validates :password, length: { in: 5..20 }
  
  validates_acceptance_of :terms, allow_nil: false, on: :create
  
  has_many :attentions
  has_many :posts, through: :attentions
  has_many :wants
  has_many :want_items, through: :wants, class_name: 'Post', source: :post 
  has_many :offers
  has_many :offer_items, through: :offers, class_name: 'Post', source: :post 
  
  has_many :comments
  
  def want(post)
    self.wants.find_or_create_by(post_id: post.id)
  end

  def unwant(post)
    want = self.wants.find_by(post_id: post.id)
    want.destroy if want
  end

  def want?(post)
    self.want_items.include?(post)
  end  
  
  def offer(post)
    self.offers.find_or_create_by(post_id: post.id)
  end

  def unoffer(post)
    offer = self.offers.find_by(post_id: post.id)
    offer.destroy if offer
  end

  def offer?(post)
    self.offer_items.include?(post)
  end
  
end