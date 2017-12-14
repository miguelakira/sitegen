class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  has_one :site



  def name
    "#{first_name} #{last_name}"
  end

  rails_admin do
    label "Usuários"

    edit do
      field :first_name do required true end
      field :last_name do required true end
      field :email do required true end
      field :password
      field :password_confirmation
      field :site
    end
  end
end
