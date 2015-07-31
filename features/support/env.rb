require 'capybara/cucumber'
#require 'capybara/poltergeist' #executar modo headless
require 'httparty'
require 'timeout'
require 'rspec'


Capybara.default_driver = :selenium

#executar modo headless
#Capybara.javascript_driver = :poltergeist
