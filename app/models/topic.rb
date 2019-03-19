class Topic < ApplicationRecord
  # Direct associations

  has_many   :videos,
             :foreign_key => "category_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
