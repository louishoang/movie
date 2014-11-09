class Review < ActiveRecord::Base
  has_many :votes
  has_many :comments

  belongs_to :user
  belongs_to :show

  validates :user,
    presence: true
  validates :show,
    presence: true
  validates :title,
    presence: true, length: {minimum: 5}
  validates :body,
    presence: true,  length: {minimum: 10}
  validates :score,
    presence: true
  validates :rating,
    presence: true, inclusion: { in: 1..10 }
end
