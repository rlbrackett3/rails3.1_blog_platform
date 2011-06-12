require 'test_helper'

class PostTest < ActiveSupport::TestCase

  def setup
    @post = Post.create(title: "foo", body: "bar")
  end
  # creating a post
  test 'should create a new post' do
    post = Post.new
    assert post
  end

  # responding to attr


  # accessible attr

  test 'should have an accessible title attr' do
    !assert_protected_attribute Post, :title
  end

  test 'should have an accessible body attr' do
    !assert_protected_attribute Post, :body
  end

  # protected attr

  test 'should have a protected id attr' do
    assert_protected_attribute Post, :id
  end

  test 'should have a protected updated_at attr' do
    assert_protected_attribute Post, :created_at
  end

  test 'should have a protected created_at attr' do
    assert_protected_attribute Post, :updated_at
  end
  # validations

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

