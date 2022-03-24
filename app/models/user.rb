class User < ApplicationRecord
    has_secure_password validations: true
    
    validates :email, presence: true, uniqueness: true
    
    has_many :list, dependent: :destroy
    has_many :post_images, dependent: :destroy
    
    def self.new_remember_token
        SecureRandom.urlsafe_base64
    end

    def self.encrypt(token)
      Digest::SHA256.hexdigest(token.to_s)
    end


end
