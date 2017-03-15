class Menu < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :menu_id, presence: true
  validates :menu_name, presence: true
  validates :description, presence: true, length: { maximum: 200 }
end
