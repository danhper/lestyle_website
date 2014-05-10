# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)      not null
#  content    :text
#  image      :string(255)
#  created_at :datetime
#  updated_at :datetime
#  is_event   :boolean          default(FALSE)
#

class Post < ActiveRecord::Base
  mount_uploader :image, PostImageUploader

  default_scope { order(created_at: :desc) }

  def get_date
    if self.is_event
      self.date
    else
      self.created_at
    end
  end
end
