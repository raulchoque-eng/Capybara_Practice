Given(/^I am in automation practice page$/) do
  visit('/')
end

When(/^I fill "(.*?)" in ([^"]*) field$/) do |value, element|
  home_page.fill_search_option value
end

When(/^I click ([^"]*) (button|link)$/) do |element, type_element|
  home_page.click_on element
end

Then(/^I should see "(.*?)" label$/) do |value|
  expect(page.find(:xpath, "//span[@class='heading-counter']").text).to eql value
end

Then(/^I should see (\d+) product's rows$/) do |rows|
  # home_page.number_of_product
  page.assert_selector(:xpath, "//ul[@class='product_list row list']//div[@class='row']", :count => rows)
end