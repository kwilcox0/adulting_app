class Video < ApplicationRecord
  # Direct associations

  belongs_to :instructor

  belongs_to :category,
             :class_name => "Topic",
             :foreign_key => "topic_id"

  has_many   :ratings,
             :dependent => :destroy

  # Indirect associations

  has_many   :users,
             :through => :ratings,
             :source => :user

  # Validations

end
