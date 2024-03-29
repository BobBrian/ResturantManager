require "application_system_test_case"

class RestaurantsTest < ApplicationSystemTestCase
  setup do
    @restaurant = restaurants(:one)
  end

  test "visiting the index" do
    visit restaurants_url
    assert_selector "h1", text: "Restaurants"
  end

  test "should create restaurant" do
    visit restaurants_url
    click_on "New restaurant"

    fill_in "Restaddress", with: @restaurant.restaddress
    fill_in "Restemail", with: @restaurant.restemail
    fill_in "Restname", with: @restaurant.restname
    fill_in "Restnumber", with: @restaurant.restnumber
    click_on "Create Restaurant"

    assert_text "Restaurant was successfully created"
    click_on "Back"
  end

  test "should update Restaurant" do
    visit restaurant_url(@restaurant)
    click_on "Edit this restaurant", match: :first

    fill_in "Restaddress", with: @restaurant.restaddress
    fill_in "Restemail", with: @restaurant.restemail
    fill_in "Restname", with: @restaurant.restname
    fill_in "Restnumber", with: @restaurant.restnumber
    click_on "Update Restaurant"

    assert_text "Restaurant was successfully updated"
    click_on "Back"
  end

  test "should destroy Restaurant" do
    visit restaurant_url(@restaurant)
    click_on "Destroy this restaurant", match: :first

    assert_text "Restaurant was successfully destroyed"
  end
end
