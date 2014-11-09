class Genre < ActiveRecord::Base
  has_many :shows

  validates :name,
    presence: true, uniqueness: true
end
