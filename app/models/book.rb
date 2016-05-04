class Book < ActiveRecord::Base
    scope :search, -> (word) { where("description like ?", "%#{word}%")}
end
