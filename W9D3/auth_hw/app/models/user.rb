class User < ApplicationRecord
    attr_reader :password
    before_validation :ensure_session_token
    validates :username, :session_token,  presence: true
    validates :password_digest, presence: { message: 'Password can\'t be blank'} 
    validates :password, length: { minimum: 6, allow_nil: true}



    def password=(password)
        self.password_digest = BCrypt::Password.create(password)

    end

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end

    def self.find_by_credentials(username,password)

        user = User.find(username)
        if user.is_password?(password)
            return user
        else
            raise 'Incorrect password'
        end
        
    end

    def self.generate_session_token
       SecureRandom::urlsafe_base64
    end

    def reset_session_token!
        user = self
        user.session_token = User.generate_session_token
    end

    def ensure_session_token
        self.session_token || = User.generate_session_token
    end


end
