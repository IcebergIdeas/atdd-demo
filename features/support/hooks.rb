require 'watir-webdriver'


Before do
  @delay = 0
  @browser = Watir::Browser.new :firefox


end


After do
  @browser.close
end