# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  order      :integer          default(0)
#  created_at :datetime
#  updated_at :datetime
#

class Category < ActiveRecord::Base
  default_scope { order(order: :asc) }
end
