require 'watir-webdriver'
require 'page-object'

Before do
  @browser = Watir::Browser.new
end

After do
  @browser.close
end

World PageObject::PageFactory