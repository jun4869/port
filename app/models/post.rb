class Post < ApplicationRecord
  belongs_to :board
  has_rich_text :content

  validates :contributor, presence: true,length: { maximum: 10}
end
