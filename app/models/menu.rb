class Menu < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :menu_name, presence: true
  validates :description, length: { maximum: 200 }
end
