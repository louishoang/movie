class Transaction < ActiveRecord::Base
  validates :name, :amount, presence: true
  validates :transaction_type, inclusion: { in: %w(income expense),
            message: "type must be either income, expense, all lower case"}
  validates :source, presence: true

  paginates_per 25
end
