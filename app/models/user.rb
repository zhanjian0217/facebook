class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # relationship
  has_many :articles

  def admin!
    update(role: 'admin')
  end

  def admin?
    role == 'admin'
  end
end
