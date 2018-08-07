class Pet < ApplicationRecord
  validates :name, :address, :found_on, :species, presence: true

  def found_days_ago
    days_since_found = (Date.today - found_on).to_i
    "found #{days_since_found} days ago"
  end
end
