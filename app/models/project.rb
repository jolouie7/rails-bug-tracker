class Project < ApplicationRecord
  has_many :tickets, dependent: :destroy
  has_many :users, through: :user_projects
  has_many :user_projects
  validates :name, presence: true
end
