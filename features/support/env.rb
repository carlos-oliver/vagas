require 'capybara'
require 'capybara/cucumber'
require 'pry'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://www.vagas.com.br'
end