require 'rspec/expectations'
require 'capybara/cucumber'
require 'capybara/poltergeist'

if ENV['NO_BROWSER']
  Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(
      app,
      window_size: [1280, 1024]#,
    )
  end
  Capybara.default_driver    = :poltergeist
  Capybara.javascript_driver = :poltergeist
else
  Capybara.default_driver = :selenium
  AfterStep do
    sleep (ENV['PAUSE'] || 1).to_i
  end
end

Capybara.default_selector = :css
World(RSpec::Matchers)
