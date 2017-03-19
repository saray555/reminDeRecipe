class Recipe < ActiveRecord::Base
    belongs_to :menu, class_name: "Menu"
end
