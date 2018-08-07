class Pet < ApplicationRecord
  validates :name, :address, :found_on, :species, presence: true
end
