class Slide < ActiveRecord::Base
  attr_accessible :description, :title
  
  has_many :version_slides, :dependent => :destroy
  has_many :versions, :through => :version_slides
  
  has_many :slide_photos
  has_many :photos, :through => :slide_photos
end
