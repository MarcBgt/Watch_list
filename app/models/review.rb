class Review < ApplicationRecord
  belongs_to :list

  validates :content, presence: true
  validates :rating, umericality: { only_integer: true }, inclusion: {in: (0..5)}
end
