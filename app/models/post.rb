class Post < ActiveRecord::Base
  attr_accessible :title, :body, :admin_id

  belongs_to :admin

  #constants
  TITLE_MAX_LENGTH = 200

  validates :title,           presence: true,
                                      length: { maximum: TITLE_MAX_LENGTH }
  validates :body,          presence: true
  # validates :admin_id,   presence: true
  validates_associated :admin



end

# == Schema Information
#
# Table name: posts
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#

