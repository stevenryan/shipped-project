class Boat < ApplicationRecord
  belongs_to :user
  has_many :schedules
  has_many :jobs, :through => :schedules
  has_attached_file :image, styles: {large: '300x300', medium: '200x200', thumb: '150x150#'}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
