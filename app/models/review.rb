class Review < ApplicationRecord
  belongs_to :list

  validates :content, presence: true
  validates :rating, numericality: { only_integer: true }, inclusion: {in: (0..5)}
end
