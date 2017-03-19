class Recipe < ActiveRecord::Base
  belongs_to :menu, class_name: "Menu"
  has_many :quantity, dependent: :destroy    
end
