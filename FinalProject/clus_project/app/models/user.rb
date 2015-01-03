class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def is_ceo?
    self.role_type=="ceo"
  end
  def is_pm?
    self.role_type === "pm"
  end
  def is_developer?
    self.role_type== "developer"
  end
end
