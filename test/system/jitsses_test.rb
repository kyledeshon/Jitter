require "application_system_test_case"

class JitssesTest < ApplicationSystemTestCase
  setup do
    @jitss = jitsses(:one)
  end

  test "visiting the index" do
    visit jitsses_url
    assert_selector "h1", text: "Jitsses"
  end

  test "should create jitss" do
    visit jitsses_url
    click_on "New jitss"

    fill_in "Content", with: @jitss.content
    fill_in "User", with: @jitss.user_id
    click_on "Create Jitss"

    assert_text "Jitss was successfully created"
    click_on "Back"
  end

  test "should update Jitss" do
    visit jitss_url(@jitss)
    click_on "Edit this jitss", match: :first

    fill_in "Content", with: @jitss.content
    fill_in "User", with: @jitss.user_id
    click_on "Update Jitss"

    assert_text "Jitss was successfully updated"
    click_on "Back"
  end

  test "should destroy Jitss" do
    visit jitss_url(@jitss)
    click_on "Destroy this jitss", match: :first

    assert_text "Jitss was successfully destroyed"
  end
end
