require "application_system_test_case"

class BlogsTitlesTest < ApplicationSystemTestCase
  setup do
    @blogs_title = blogs_titles(:one)
  end

  test "visiting the index" do
    visit blogs_titles_url
    assert_selector "h1", text: "Blogs Titles"
  end

  test "creating a Blogs title" do
    visit blogs_titles_url
    click_on "New Blogs Title"

    fill_in "Body", with: @blogs_title.body
    fill_in "Name", with: @blogs_title.name
    click_on "Create Blogs title"

    assert_text "Blogs title was successfully created"
    click_on "Back"
  end

  test "updating a Blogs title" do
    visit blogs_titles_url
    click_on "Edit", match: :first

    fill_in "Body", with: @blogs_title.body
    fill_in "Name", with: @blogs_title.name
    click_on "Update Blogs title"

    assert_text "Blogs title was successfully updated"
    click_on "Back"
  end

  test "destroying a Blogs title" do
    visit blogs_titles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blogs title was successfully destroyed"
  end
end
