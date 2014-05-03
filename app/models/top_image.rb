# == Schema Information
#
# Table name: top_images
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  image      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class TopImage < ActiveRecord::Base
  mount_uploader :image, BaseImageUploader
end
