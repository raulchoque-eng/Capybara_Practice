Given(/^I am in automation practice page$/) do
  visit('/')
end

When(/^I fill "(.*?)" in ([^"]*) field$/) do |value, element|
  home_page.fill_search_option value
end

When(/^I click ([^"]*) (button|link)$/) do |element, type_element|
  home_page.click_search_button
end

Then(/^I should see "(.*?)" label$/) do |value|
  pending # Write code here that turns the phrase above into concrete actions
end
