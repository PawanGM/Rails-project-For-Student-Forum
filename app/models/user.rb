class User < ActiveRecord::Base
attr_accessor :password
attr_accessible :name, :email, :password, :password_confirmation
email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

validates :name, :presence => true
validates_length_of :name, :maximum => 50
validates :email, :presence => true
validates :email, :format => { :with => email_regex }
validates :email, :uniqueness => true

# Automatically create the virtual attribute 'password_confirmation'.
validates :password, :presence     => true,
                     :confirmation => true,
		      :inclusion => { :in => 5..40 }
# :length => { ( :minimum => 5), ( :maximum => 40) },
before_save :encrypt_password

# Return true if the user's password matches the submitted password.
def has_password?(submitted_password)
encrypted_password == encrypt(submitted_password)
end

def self.authenticate(email, submitted_password)
  user = find_by_email(email)
  return nil if user.nil?
  return user if user.has_password?(submitted_password)
end

private
  def encrypt_password
  self.salt = make_salt if new_record?  
  self.encrypted_password = encrypt(password)
  end
  def encrypt(string)
    
  secure_hash("#{salt}--#{string}")
end
def make_salt
  secure_hash("#{Time.now.utc}--#{password}")
end
def secure_hash(string)
  Digest::SHA2.hexdigest(string)
end


end
