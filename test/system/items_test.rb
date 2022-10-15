require "application_system_test_case"

class ItemsTest < ApplicationSystemTestCase
  setup do
    @item = items(:one)
  end

  test "visiting the index" do
    visit items_url
    assert_selector "h1", text: "Items"
  end

  test "should create item" do
    visit items_url
    click_on "New item"

    fill_in "Item name", with: @item.item_name
    fill_in "Item notes", with: @item.item_notes
    fill_in "Website", with: @item.website
    fill_in "Website username", with: @item.website_username
    fill_in "Website watchword", with: @item.website_watchword
    click_on "Create Item"

    assert_text "Item was successfully created"
    click_on "Back"
  end

  test "should update Item" do
    visit item_url(@item)
    click_on "Edit this item", match: :first

    fill_in "Item name", with: @item.item_name
    fill_in "Item notes", with: @item.item_notes
    fill_in "Website", with: @item.website
    fill_in "Website username", with: @item.website_username
    fill_in "Website watchword", with: @item.website_watchword
    click_on "Update Item"

    assert_text "Item was successfully updated"
    click_on "Back"
  end

  test "should destroy Item" do
    visit item_url(@item)
    click_on "Destroy this item", match: :first

    assert_text "Item was successfully destroyed"
  end
end
