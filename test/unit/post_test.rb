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

  # responding to attrs and methods
  test 'should respond to title' do
    assert @post.title, "no such attr or method"
  end

  test 'should respond to body' do
    assert @post.body, "no such attr or method"
  end

  test 'should respond to created_at' do
    assert @post.created_at, "no such attr or method"
  end

  test 'should respond to updated_at' do
    assert @post.updated_at, "no such attr or method"
  end

  test 'should respond to id' do
    assert @post.id, "no such attr or method"
  end

  # accessible attr
  # i am not sure about this stuff
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
  test 'should create a valid post' do
    post = Post.create(title: "title", body: "Some text.")
    assert post, "Failed to create a valid post."
  end

  # title validations
  test 'should not create a post without a title' do
    post = Post.new(title: "", body: "foobar")
    assert !post.save, "Created an invalid post with no title."
  end

  test 'should not create a post with title longer than 200 characters' do
    long_title = "A" * 201
    post = Post.new(title: long_title, body: "foobar")
    assert !post.save, "Created an invalid post with a long (255char) title."
  end

  # body validations
  test 'should not create a post without a body' do
    post = Post.new(title: "foo", body: "")
    assert !post.save, "Created an invalid post with no body."
  end

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

