class Section < ActiveRecord::Base
  attr_accessible :body, :position

  belongs_to :post

  # Validations
  validates :body,               length: { within: 3..4096, allow_blank: true }
  validates :position,          presence: true, on: :create
  validates :post_id,           presence: true

  #scopes
  scope :forward, order('position ASC')

end

# == Schema Information
#
# Table name: sections
#
#  id         :integer         not null, primary key
#  body       :text
#  position   :integer         default(0)
#  post_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

