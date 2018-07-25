require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase

  def self.override_driven_by
    if ENV['SELENIUM_REMOTE_HOST']
      Capybara.javascript_driver = :selenium_remote_firefox
      Capybara.register_driver "selenium_remote_firefox".to_sym do |app|
        Capybara::Selenium::Driver.new(
          app,
          browser: :remote,
          url: "http://#{ENV['SELENIUM_REMOTE_HOST']}:4444/wd/hub",
          desired_capabilities: :chrome)
      end

      # Find Docker IP address
      docker_ip = `/sbin/ip route|awk '/scope/ { print $7 }'`.strip
      Capybara.server_host = docker_ip
      Capybara.server_port = '3000'
      Capybara.app_host = "http://#{Capybara.current_session.server.host}:#{Capybara.current_session.server.port}"
    else
      # Local environment
      driven_by :selenium, using: :headless_chrome, screen_size: [1400, 1400]
    end
  end

  override_driven_by
end
