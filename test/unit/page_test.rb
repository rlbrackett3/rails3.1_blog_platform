require 'test_helper'

class PageTest < ActiveSupport::TestCase
  def setup
  	@post = Post.make_unsaved
  end

  test 'create a new static page' do
  	page = Page.create(:)
  end

  test 'new page saves successfully' do
  	assert @post.save
  end
end
