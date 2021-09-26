class Ticket < ApplicationRecord
  belongs_to :project
  has_many :ticket_comments, dependent: :destroy
  has_many :ticket_histories, dependent: :destroy
end
