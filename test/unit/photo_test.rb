require 'test_helper'

class PhotoTest < ActiveSupport::TestCase
  # setup
  ################################
  def setup
    @post = posts :valid
    @section = sections :text
    @photo = photos :valid
  end
  ################################

  # create Text Section object with valid attr
  ################################
  test 'photo: should have valid attr' do
    photo = Photo.new
    # assert post record build in DB
    assert photo
    #assert not valid because title is required
    assert_nil photo.title, "Photo has a body."
    #assert not valid because a section is required
    assert_nil photo.section_id, "Photo has a Section."
    # assert that a valid record cannot be saved
    assert !photo.valid?, "Saved an invalid Photo."

    # Load in valid data
    section.title = photos(:valid).title
    section.section_id = sections(:valid).id

    assert section.valid?

    # check that all values were set correctly with valid data
    assert_equal photo.title, photos(:valid).title
    assert_equal photo.sections_id, sections(:valid).id
  end
  ################################

  # respond to attr methods
  ################################
  test 'Photo: should respond to title' do
    assert photos(:valid).title, "Photo does not respond to title."
  end

  test 'should respond to created_at' do
    assert photos(:valid).created_at, "Photo does not respond to created_at."
  end

  test 'should respond to updated_at' do
    assert photos(:valid).updated_at, "Photo does not respond to updated_at."
  end

  test 'should respond to post_id' do
    assert photos(:valid).section_id, "Photo does not respond to section_id."
  end
  ################################

  # tests
  ################################

  ################################

  # tests
  ################################

  ################################

  # tests
  ################################

  ################################

  # tests
  ################################

  ################################
end
