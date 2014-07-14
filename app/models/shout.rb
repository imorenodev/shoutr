class Shout < ActiveRecord::Base
  belongs_to :user

  scope :chronological, -> { order(created_at: :desc) }

end