require "application_system_test_case"

class DashboardsTest < ApplicationSystemTestCase
  test "visiting the index" do
    login_as(users(:jane_doe))
    visit rails_admin.dashboard_path
    assert_current_path rails_admin.dashboard_path

    assert_selector "[data-model=address] a", text: "Addresses"
    assert_selector "[data-model=client] a", text: "Clients"
    assert_selector "[data-model=commission] a", text: "Commission"
    assert_selector "[data-model=discount] a", text: "Discounts"
    assert_selector "[data-model=product] a", text: "Products"
    assert_selector "[data-model=sale] a", text: "Sales"
    assert_selector "[data-model=sales_item] a", text: "Sales items"
    assert_selector "[data-model=user] a", text: "Users"
  end
end
