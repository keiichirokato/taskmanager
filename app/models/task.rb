class Task < ApplicationRecord
    validates :name, presence: true, length: { maximum: 255 } 
    validates :detail, length: { maximum: 10000 } 
end
