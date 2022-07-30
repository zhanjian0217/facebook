class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # relationship
  has_many :articles
  has_one_attached :mugshot
  has_one_attached :banner


  def admin!
    update(role: 'admin')
  end

  def admin?
    role == 'admin'
  end
end
