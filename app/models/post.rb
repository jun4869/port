class Post < ApplicationRecord
  belongs_to :board
  validates :contributor, presence: true,length: { maximum: 10}
end
