require 'test_helper'

class DraftPostsControllerTest < ActionController::TestCase
  setup do
    @draft_post = draft_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:draft_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create draft_post" do
    assert_difference('DraftPost.count') do
      post :create, draft_post: @draft_post.attributes
    end

    assert_redirected_to draft_post_path(assigns(:draft_post))
  end

  test "should show draft_post" do
    get :show, id: @draft_post.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @draft_post.to_param
    assert_response :success
  end

  test "should update draft_post" do
    put :update, id: @draft_post.to_param, draft_post: @draft_post.attributes
    assert_redirected_to draft_post_path(assigns(:draft_post))
  end

  test "should destroy draft_post" do
    assert_difference('DraftPost.count', -1) do
      delete :destroy, id: @draft_post.to_param
    end

    assert_redirected_to draft_posts_path
  end
end
