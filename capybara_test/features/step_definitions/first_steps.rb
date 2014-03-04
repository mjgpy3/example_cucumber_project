#encoding: utf-8

Given(/^I am at a capybara page$/) do
  visit "http://rubydoc.info/github/jnicklas/capybara/master/Capybara"
end

When /^I search for "(.+)"$/ do |search_item|
  fill_in "q", :with => search_item
  find_field('q').native.send_keys(:enter)
end

Then /^I see "(.*?)" as a result$/ do |expected_result|
  page.should have_content(expected_result)
end
