class Video < ApplicationRecord
  # Direct associations

  belongs_to :instructor

  belongs_to :category,
             :class_name => "Topic"

  has_many   :ratings,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
