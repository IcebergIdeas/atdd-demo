require 'watir-webdriver'


Before do
  @delay = 0
  @browser = Watir::Browser.new :firefox
  @delay = 2

end


After do
  @browser.close
end