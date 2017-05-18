require 'test_helper'

class PCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @p_comment = p_comments(:one)
  end

  test "should get index" do
    get p_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_p_comment_url
    assert_response :success
  end

  test "should create p_comment" do
    assert_difference('PComment.count') do
      post p_comments_url, params: { p_comment: { content: @p_comment.content } }
    end

    assert_redirected_to p_comment_url(PComment.last)
  end

  test "should show p_comment" do
    get p_comment_url(@p_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_p_comment_url(@p_comment)
    assert_response :success
  end

  test "should update p_comment" do
    patch p_comment_url(@p_comment), params: { p_comment: { content: @p_comment.content } }
    assert_redirected_to p_comment_url(@p_comment)
  end

  test "should destroy p_comment" do
    assert_difference('PComment.count', -1) do
      delete p_comment_url(@p_comment)
    end

    assert_redirected_to p_comments_url
  end
end
