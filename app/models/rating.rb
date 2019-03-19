class Rating < ApplicationRecord
  # Direct associations

  belongs_to :video

  belongs_to :user

  # Indirect associations

  # Validations

end
