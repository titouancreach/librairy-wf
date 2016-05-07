class User < ActiveRecord::Base
    has_secure_password
    
    validates :username,
              presence: true,
              uniqueness: true
              
      scope :search, -> (word) { where("firstname like ? OR lastname like ? ", "%#{word}%", "%#{word}%")}
end
