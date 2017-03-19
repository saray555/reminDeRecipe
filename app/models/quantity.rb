class Quantity < ActiveRecord::Base
  validates :recipe_name, presence: true
  
  belongs_to :recipe    
end
