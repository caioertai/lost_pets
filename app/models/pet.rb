class Pet < ApplicationRecord
  SPECIES_ALLOWED = %w[cat dog parrot dinossaur]

  validates :name, :address, :found_on, :species, presence: true
  validates :species, inclusion: { in: SPECIES_ALLOWED }

  def found_days_ago
    days_since_found = (Date.today - found_on).to_i
    "found #{days_since_found} days ago"
  end
end
