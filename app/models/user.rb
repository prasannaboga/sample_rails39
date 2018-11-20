class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable,
           :trackable

    validates :username, presence: true,
              uniqueness: true, allow_blank: false, allow_nil: false

    has_one :profile, dependent: :destroy

end
