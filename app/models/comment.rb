class Comment < ActiveRecord::Base
  attr_accessible :name, :email, :url, :body

  belongs_to :post, dependent: :destroy

  # Validations

end

# == Schema Information
#
# Table name: comments
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  url        :string(255)
#  body       :text
#  post_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

