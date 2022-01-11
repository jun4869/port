class Board < ApplicationRecord
  has_many :posts,dependent: :destroy
  validates :author, presence: true,length: { maximum: 10}
  validates :title, presence: true,length: { maximum: 30}
end
