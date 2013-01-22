class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :remember_me

  # THE WHOLE GODDAMN SHEBANG
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable,
  #        :validatable, :confirmable, :timeoutable,
  #        :lockable, :omniauthable, :token_authenticatable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
end
