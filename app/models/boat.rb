class Boat < ApplicationRecord
  belongs_to :user
  has_many :schedules
  has_many :jobs, :through => :schedules

  validates :name, uniqueness: {message: "This Boat name is already being used"}
end
