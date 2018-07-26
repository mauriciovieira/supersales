require "application_system_test_case"

class DashboardsTest < ApplicationSystemTestCase
  test "visiting the index" do
    login_as(users(:jane_doe))
    visit rails_admin.dashboard_path
    assert_current_path rails_admin.dashboard_path
  end
end
