Given(/^I am on the welcome page$/) do
  @browser.goto 'http://localhost:8000/welcome.html'
end

# When(/^I select the $/) do
#   @browser.li(:id => 'testRow1').click
#   sleep 5
# end
#
# Then(/^I can see the  stats$/) do
#   expect(@browser.text.include? '')
# end
#
# When(/^I select the $/) do
#   @browser.li(:id => 'testRow2').click
#   sleep 5
# end
#
# Then(/^I don't see the  stats$/) do
#   expect(@browser.text.include? '').to be(false)
# end

When(/^I select Looking for a Book$/) do
  @browser.link(:id => 'adLink').click
end

Then(/^I should see the Cucumber and Cheese book message$/) do
  @browser.h3(:id => 'adMessage').wait_until_present
  adBox = @browser.div(:id => 'adModal')
  expect(adBox.text.include? 'Cucumber & Cheese').to be(true)
end