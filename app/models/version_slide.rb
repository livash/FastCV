class VersionSlide < ActiveRecord::Base
  attr_accessible :slide_id, :version_id
  
  belongs_to :slide
  belongs_to :version
end
