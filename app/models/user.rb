class User < ActiveRecord::Base
     scope :search, -> (word) { where("firstname like ? OR lastname like ? ", "%#{word}%", "%#{word}%")}
end
