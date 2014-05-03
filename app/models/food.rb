# == Schema Information
#
# Table name: foods
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  description    :text
#  image          :string(255)
#  price          :integer
#  created_at     :datetime
#  updated_at     :datetime
#  is_on_top_page :boolean          default(FALSE)
#

class Food < ActiveRecord::Base
  mount_uploader :image, BaseImageUploader
  has_and_belongs_to_many :categories, join_table: 'foods_have_categories'

end
