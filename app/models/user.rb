class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :projects
  after_initialize :set_default_admin, if: :new_record?

  private

  def set_default_admin
    self.admin ||= false
  end
end
