class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :category, presence: true, inclusion: { in: ['belgian', 'french', 'chinese', 'japanese', 'italian']}
  # validates :rating, inclusion: { in: [1,2,3] }
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :phone_number, uniqueness: true # later: add inclusion is_a_phone_number
end

