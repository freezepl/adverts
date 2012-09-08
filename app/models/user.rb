class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role
  # attr_accessible :title, :body
  has_many :adverts
  belongs_to :role
  
  ROLES = %w[admin user banned]
  def role?(role)
      return !!self.roles.find_by_name(role.to_s.camelize)
  end


end
