class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :remember_me
  
  # THE WHOLE GODDAMN SHEBANG
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable, :encryptable, :confirmable,
         :lockable, :omniauthable, :token_authenticatable,
         :timeoutable
end
