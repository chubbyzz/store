class Product < ActiveRecord::Base
  has_many :photos, as: :imageble
end
