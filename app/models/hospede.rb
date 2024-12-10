class Hospede < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    validates :nome, presence: true
    validates :email, presence: true, uniqueness: false
    validates :telefone, presence: true
  
    has_many :reservas
    devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
end

