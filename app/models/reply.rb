class Reply < ActiveRecord::Base
  attr_accessible :body

  belongs_to :comment

end



# == Schema Information
#
# Table name: replies
#
#  id         :integer         not null, primary key
#  body       :text
#  comment_id :integer
#  created_at :datetime
#  updated_at :datetime
#

