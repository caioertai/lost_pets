require 'test_helper'

class PetTest < ActiveSupport::TestCase
  test '#found_days_ago should return a string' do
    pet_found_6_days_ago = pets(:pet_found_6_days_ago)
    assert_equal 'found 6 days ago', pet_found_6_days_ago.found_days_ago
  end

  test '#found_days_ago should return the correct text' do
    pet_found_6_days_ago = pets(:pet_found_6_days_ago)
    assert_instance_of String, pet_found_6_days_ago.found_days_ago
  end
end
