class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile,  dependent: :destroy
  accepts_nested_attributes_for :profile

  def profile
    super || build_profile(user: self)
  end

end
