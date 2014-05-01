# == Schema Information
#
# Table name: menu_entries
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  image       :string(255)
#  category_id :integer
#  price       :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class MenuEntry < ActiveRecord::Base
  mount_uploader :image, BaseImageUploaderUploader
end
