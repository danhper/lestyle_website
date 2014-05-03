# == Schema Information
#
# Table name: pages_images
#
#  id         :integer          not null, primary key
#  identifier :string(255)
#  image      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class PagesImage < ActiveRecord::Base
  mount_uploader :image, BaseImageUploader
end
