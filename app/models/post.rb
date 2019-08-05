class Post < ApplicationRecord
  belongs_to :user
  has_many :shoutouts

  validates :title, presence: true
end
