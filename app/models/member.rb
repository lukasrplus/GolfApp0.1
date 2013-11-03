class Member < ActiveRecord::Base

require 'carrierwave/orm/activerecord'

# attr_accessible :image

mount_uploader :image, PhotoUploader

end
