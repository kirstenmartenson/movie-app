class Actor < ApplicationRecord
  validates :known_for, presence: true
  validates :first_name, length: {minimum:2}
  validates :last_name, length: {minimum:2}
  validates :age

  dev valid_age
    if age.to_i <= 14
      errors.add(:age, 'You're not old enough')
    end
  end
end  