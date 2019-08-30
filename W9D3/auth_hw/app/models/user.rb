class User < ApplicationRecord
    attr_reader :password
    after_initialization :ensure_session_token
    validates :username, :session_token,  presence: true, uniqueness: true
    validates :password_digest, presence: { message: 'Password can\'t be blank'} 
    validates :password, length: { minimum: 6, allow_nil: true}



    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end

    def self.find_by_credentials(username,password)

        user = User.find(username)
        if user && user.is_password?(password)
            return user
        else
            return nil 
        end
        
    end

    def self.generate_session_token
       SecureRandom::urlsafe_base64
    end

    def reset_session_token!
        self.update!(session_token: self.class.generate_session_token)
    end

    def ensure_session_token
        self.session_token || = self.class.generate_session_token
    end


end
