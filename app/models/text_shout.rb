class TextShout < ActiveRecord::Base
  validates :content, length: { minimum: 144 }
end
