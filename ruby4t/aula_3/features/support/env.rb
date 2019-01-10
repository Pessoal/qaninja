require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'mongo'
require 'logger'

require_relative 'helpers'

World(Database)

Capybara.configure do |c|
    c.default_driver = :selenium
    c.app_host = 'https://mark7.herokuapp.com'
end

Capybara.default_max_wait_time = 5

Mongo::Logger.logger.level = Logger::FATAL