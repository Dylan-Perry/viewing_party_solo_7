class User < ApplicationRecord
   validates_presence_of :username, :email, :password
   validates_uniqueness_of :username, :email
   # validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
   has_secure_password

   has_many :user_parties
   has_many :viewing_parties, through: :user_parties
end
