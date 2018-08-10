require 'test_helper'

class BlogsTitlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blogs_title = blogs_titles(:one)
  end

  test "should get index" do
    get blogs_titles_url
    assert_response :success
  end

  test "should get new" do
    get new_blogs_title_url
    assert_response :success
  end

  test "should create blogs_title" do
    assert_difference('BlogsTitle.count') do
      post blogs_titles_url, params: { blogs_title: { body: @blogs_title.body, name: @blogs_title.name } }
    end

    assert_redirected_to blogs_title_url(BlogsTitle.last)
  end

  test "should show blogs_title" do
    get blogs_title_url(@blogs_title)
    assert_response :success
  end

  test "should get edit" do
    get edit_blogs_title_url(@blogs_title)
    assert_response :success
  end

  test "should update blogs_title" do
    patch blogs_title_url(@blogs_title), params: { blogs_title: { body: @blogs_title.body, name: @blogs_title.name } }
    assert_redirected_to blogs_title_url(@blogs_title)
  end

  test "should destroy blogs_title" do
    assert_difference('BlogsTitle.count', -1) do
      delete blogs_title_url(@blogs_title)
    end

    assert_redirected_to blogs_titles_url
  end
end
