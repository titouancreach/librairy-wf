class Book < ActiveRecord::Base
      scope :search, -> (keyword) { where("description like ?", "%#{keyword}%")}
end
