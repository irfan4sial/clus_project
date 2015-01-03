class Home < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  crop_uploaded :image
  attr_accessor :image_crop_x, :image_crop_y, :image_crop_w, :image_crop_h



end
