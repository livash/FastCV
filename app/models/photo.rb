class Photo < ActiveRecord::Base
  attr_accessible :description, :title, :image
  
  has_attached_file :image, :styles => {
    :thumb => "180x145#",
    :medium => "480x320#"
  }
  
  has_many :slide_photos
  has_one :slide, :through => :slide_photos
end
