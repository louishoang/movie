class Show < ActiveRecord::Base
  paginates_per 24
  def self.search(query)
    where("name ilike ?", "%#{query}%")
  end

  has_many :reviews
  belongs_to :genre

  validates :name,
    presence: true, uniqueness: true
  validates :description,
    presence: true
  validates :genre,
    presence: true
end
