class Version < ActiveRecord::Base
  attr_accessible :description, :title, :user_id
  
  belongs_to :user
  
  has_many :slides, :through => :version_slides
  has_many :version_slides, :dependent => :destroy
end
