require "application_system_test_case"

class PostAttachesTest < ApplicationSystemTestCase
  setup do
    @post_attach = post_attaches(:one)
  end

  test "visiting the index" do
    visit post_attaches_url
    assert_selector "h1", text: "Post Attaches"
  end

  test "creating a Post attach" do
    visit post_attaches_url
    click_on "New Post Attach"

    fill_in "Avatar", with: @post_attach.avatar
    fill_in "Post", with: @post_attach.post_id
    click_on "Create Post attach"

    assert_text "Post attach was successfully created"
    click_on "Back"
  end

  test "updating a Post attach" do
    visit post_attaches_url
    click_on "Edit", match: :first

    fill_in "Avatar", with: @post_attach.avatar
    fill_in "Post", with: @post_attach.post_id
    click_on "Update Post attach"

    assert_text "Post attach was successfully updated"
    click_on "Back"
  end

  test "destroying a Post attach" do
    visit post_attaches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post attach was successfully destroyed"
  end
end
