class Book < ApplicationRecord
  scope :costly, -> {where("price > ?", 3000) }
  scope :written_abount, ->(theme) {where("name like ?", "%#{theme}%") }
  
  belongs_to :publisher
  has_many :book_authors
  has_many :authors, through: :book_authors

  validates :name, presence: true
  validates :name, length: {maximum: 15}
  validates :price, numericality: {greater_than_or_equal_to: 0}

end
