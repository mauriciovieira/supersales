require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase

  def self.override_driven_by
    if ENV['SELENIUM_REMOTE_HOST']
      # Docker environment
      driven_by :selenium, using: :chrome, options: {
        browser: :remote,
        url: "http://#{ENV['SELENIUM_REMOTE_HOST']}:4444/wd/hub",
        desired_capabilities: :chrome
      }
    else
      # Local environment
      driven_by :selenium, using: :headless_chrome, screen_size: [1400, 1400]
    end
  end

  override_driven_by
end
