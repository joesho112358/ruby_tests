Given /^I am on Google$/ do
  visit HomePage
end

Given /^I search for (ruby)$/ do |search|
  on(HomePage) do |page|
    page.search_element.when_present
    page.search = search
	@browser.wait(10)
    @browser.send_keys :enter
  end
end

Given /^I can see a ruby download link$/ do
  on(ResultPage) do |page|
    @browser.wait_until {
      page.results?
    }
    fail 'The results did not include Ruby download link' unless page.ruby_download?
  end
end