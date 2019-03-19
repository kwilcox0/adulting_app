class Instructor < ApplicationRecord
  # Direct associations

  has_many   :videos,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
