class User < ActiveRecord::Base
  
  acts_as_commontator
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  # userが消えたらpostも消える
  has_many :posts, dependent: :destroy
  

end
