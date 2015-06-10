class Product < ActiveRecord::Base
  has_many :images
  has_many :main_image, -> {where images: {main: true}}, class_name: "Image"
end
