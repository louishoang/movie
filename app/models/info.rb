class Info < ActiveRecord::Base
  validates :name, presence: true
end
