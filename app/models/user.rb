class User < ApplicationRecord
    validates :username, length: { minimum: 2}
    validates :username, length: { maximum: 15 }
    validates :email, format: { with: /@/, message: "Need @"}
    validates :password, length: { minimum: 6 }
end
