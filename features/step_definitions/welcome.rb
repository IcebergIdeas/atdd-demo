Given(/^I am on the welcome page$/) do
  @browser.goto 'http://localhost:8000/welcome.html'
end

When(/^I select Looking for a Book$/) do
  @browser.link(:id => 'adLink').click
end

Then(/^I should see the Cucumber and Cheese book message$/) do
  @browser.h3(:id => 'adMessage').wait_until_present
  adBox = @browser.div(:id => 'adModal')
  expect(adBox.text.include? 'Cucumber & Cheese').to be(true)
end