class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  #attr_accessible :email, :password, :password_confirmation, :username
  #include ActiveModel::Validations

  #validates :email, :presence => true,
                   # :format => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  #attr_accessor :password
  
  #before_save :encrypt_password

  #before_create :confirmation_token


  #validates_confirmation_of :password
  #validates_presence_of :password, :on => :create
  #validates_presence_of :email
  #validates_uniqueness_of :email
  #validates_presence_of :name
  #validates_uniqueness_of :name

  #def self.authenticate(email, password)
    #user = find_by_email(email)
   # if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
   # else
   #   nil
   # end
  #end

  
  #def email_activate
   # self.email_confirmed = true
   # self.confirm_token = nil
   # save!(:validate => false)
  #end


  #def encrypt_password
    #if password.present?
     # self.password_salt = BCrypt::Engine.generate_salt
    #  self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
   # end
  
  #end

  #private

  #def confirmation_token
    #if self.confirm_token.blank?
     #   self.confirm_token = SecureRandom.urlsafe_base64.to_s
    #end
  #end

end