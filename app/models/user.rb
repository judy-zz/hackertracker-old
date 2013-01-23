class User < ActiveRecord::Base
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me

  # THE WHOLE GODDAMN SHEBANG
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable,
  #        :validatable, :confirmable, :timeoutable,
  #        :lockable, :omniauthable, :token_authenticatable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username,
    presence: true,
    uniqueness: true,
    format: {
      with: /^\w+$/i,
      message: "can only contain letters and numbers."}
         
end
