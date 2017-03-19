class Menu < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :menu_name, presence: true
  validates :description, length: { maximum: 200 }
  has_many :recipes, dependent: :destroy
  
  def recipe?(menu_params)
    recipe.find_by(menu_params)
  end
  
end
