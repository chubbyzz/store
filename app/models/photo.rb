class Photo < ActiveRecord::Base
  mount_upload :photo
  belongs_to :product
end
