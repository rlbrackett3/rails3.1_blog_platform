require 'test_helper'

class PageTest < ActiveSupport::TestCase
  def setup
    @page = Page.new
  end

  test 'create a new static page' do
    page = Page.create(title: 'test', permalink: 'test', content: 'testing')
    assert page
  end

  test 'new page saves successfully' do
     page = Page.new(title: 'test', permalink: 'test', content: 'testing')
    assert page.save
  end

  # testing for validations
  test 'new page with no attributes does not save' do
    page = Page.new
    assert page
  end

  test 'does not save new page with non unique name' do
    page = Page.new(title: 'test', permalink: 'test')
    page2 = Page.new(title: 'test', permalink: 'test')
    assert page2
  end
end

# == Schema Information
#
# Table name: pages
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  permalink  :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#

