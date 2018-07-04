class Childcomment < ApplicationRecord
  belongs_to :user
  belongs_to :comment
  
  validates :childcomment, presence: true
    
end
