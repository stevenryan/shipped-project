class Boat < ApplicationRecord
  belongs_to :user
  has_many :schedules
  has_many :jobs, :through => :schedules
end
