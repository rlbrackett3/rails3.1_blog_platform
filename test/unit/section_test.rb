require 'test_helper'

class SectionTest < ActiveSupport::TestCase
  # setup
  ################################
  def setup
    @post = posts :valid
    @text_section = sections :text
    # @photo_section = sections :photo
  end
  ################################

  # create Reply object with valid attr
  ################################
  test 'should have valid attr' do
    section = Section.new
    # assert post record build in DB
    assert section
    #assert not valid because body is required
    assert_nil section.body, "Section has a body."
    #assert not valid because a position is required
    assert_nil section.position, "Reply has a position."
    #assert not valid because a admin is required
    assert_nil section.post_id, "Section has a Post."
    # assert that a valid record cannot be saved
    assert !reply.valid?, "Saved an invalid Reply."

    # Load in valid data
    reply.body = replies(:valid).body
    reply.comment_id = comments(:approved).id
    reply.admin_id = admins(:foo).id

    assert reply.valid?

    # check that all values were set correctly with valid data
    assert_equal reply.body, replies(:valid).body
    assert_equal reply.comment_id, comments(:approved).id
    assert_equal reply.admin_id, admins(:foo).id

  end
  ################################

  # tests
  ################################

  ################################

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

