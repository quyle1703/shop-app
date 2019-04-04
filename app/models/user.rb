class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  validates_presence_of :first_name, :last_name
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def full_name                                      
    ([first_name, last_name] - ['']).compact.join(' ')
  end
  has_many :products
  has_many :orders
end
