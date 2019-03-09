require "application_system_test_case"

class HomeTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit "home/index"

    assert_selector "h2", text: "Hello from JS"
  end
end