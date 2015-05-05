class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :username, :presence => true
  validates :name, :presence => true
  validates :lastname, :presence => true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :tasks, dependent: :destroy

	def fullname
		return name + " " + lastname
	end
end
