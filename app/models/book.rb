class Book < ActiveRecord::Base
    scope :search, -> (word) { where("author like ? OR title like ? OR isbn like ?", "%#{word}%", "%#{word}%", "%#{word}%")}
    scope :memberbooks, -> (id) { where("userid = ?", "#{id}")}
end
