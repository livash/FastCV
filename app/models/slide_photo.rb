class SlidePhoto < ActiveRecord::Base
  attr_accessible :photo_id, :slide_id
  
  belongs_to :slide
  belongs_to :photo
end
