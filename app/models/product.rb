class Product < ApplicationRecord
  belongs_to :category
  validates_presence_of :title,:price
  validates_numericality_of :price
  has_one_attached :pic
end
