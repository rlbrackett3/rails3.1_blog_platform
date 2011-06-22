require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
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

