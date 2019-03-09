require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  Capybara.register_driver :headless_chrome do |app|
    if ENV['SELENIUM_HUB_URL']
      Capybara::Selenium::Driver.new app,
        url: ENV['SELENIUM_HUB_URL'],
        browser: :remote,
        desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
          chromeOptions: { args: %w(headless disable-gpu) }
        )
    else
      Capybara::Selenium::Driver.new app,
        browser: :chrome,
        desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
          chromeOptions: { args: %w(headless disable-gpu) }
        )
    end
  end

  driven_by :headless_chrome

  setup do
    if ENV['TEST_APP_HOST']
      Capybara.server_port = ENV['TEST_APP_PORT'].to_i
      Capybara.app_host = "http://#{ENV['TEST_APP_HOST']}:#{ENV['TEST_APP_PORT']}"
      Capybara.server_host = '0.0.0.0'
    end
  end
end
