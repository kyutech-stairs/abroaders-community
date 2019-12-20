require 'test_helper'

class PostAttachesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_attach = post_attaches(:one)
  end

  test "should get index" do
    get post_attaches_url
    assert_response :success
  end

  test "should get new" do
    get new_post_attach_url
    assert_response :success
  end

  test "should create post_attach" do
    assert_difference('PostAttach.count') do
      post post_attaches_url, params: { post_attach: { avatar: @post_attach.avatar, post_id: @post_attach.post_id } }
    end

    assert_redirected_to post_attach_url(PostAttach.last)
  end

  test "should show post_attach" do
    get post_attach_url(@post_attach)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_attach_url(@post_attach)
    assert_response :success
  end

  test "should update post_attach" do
    patch post_attach_url(@post_attach), params: { post_attach: { avatar: @post_attach.avatar, post_id: @post_attach.post_id } }
    assert_redirected_to post_attach_url(@post_attach)
  end

  test "should destroy post_attach" do
    assert_difference('PostAttach.count', -1) do
      delete post_attach_url(@post_attach)
    end

    assert_redirected_to post_attaches_url
  end
end
