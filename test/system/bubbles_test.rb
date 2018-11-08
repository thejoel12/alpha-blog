require "application_system_test_case"

class BubblesTest < ApplicationSystemTestCase
  setup do
    @bubble = bubbles(:one)
  end

  test "visiting the index" do
    visit bubbles_url
    assert_selector "h1", text: "Bubbles"
  end

  test "creating a Bubble" do
    visit bubbles_url
    click_on "New Bubble"

    click_on "Create Bubble"

    assert_text "Bubble was successfully created"
    click_on "Back"
  end

  test "updating a Bubble" do
    visit bubbles_url
    click_on "Edit", match: :first

    click_on "Update Bubble"

    assert_text "Bubble was successfully updated"
    click_on "Back"
  end

  test "destroying a Bubble" do
    visit bubbles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bubble was successfully destroyed"
  end
end
