class Show < ActiveRecord::Base
  ratyrate_rateable 'original_score'

  paginates_per 24
  def self.search(query)
    where("name ilike ?", "%#{query}%")
  end

  has_many :reviews
  belongs_to :genre

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :genre, presence: true

  dragonfly_accessor :video
end
