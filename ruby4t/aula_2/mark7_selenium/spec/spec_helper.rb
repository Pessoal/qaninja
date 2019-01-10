require 'selenium-webdriver'
require 'capybara'
require 'capybara/rspec'
require 'site_prism'


RSpec.configure do |config|

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.include Capybara::DSL

end

Capybara.configure do |c|
  c.default_driver = :selenium
end

Capybara.default_max_wait_time = 5