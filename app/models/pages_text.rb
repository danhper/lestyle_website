# == Schema Information
#
# Table name: pages_texts
#
#  id         :integer          not null, primary key
#  identifier :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#

class PagesText < ActiveRecord::Base
end
