Given /^I am on Google$/ do
  visit Google::HomePage
end

Given /^I search for (ruby)$/ do |text|
  on(Google::HomePage).search_for text
end

Given /^I can see a ruby download link$/ do
  on(Google::ResultPage) do |page|
    page.browser.wait_until {
      page.results?
    }
    fail 'The results did not include Ruby page link' unless page.ruby_home? && page.ruby_home_element.text.include?("Ruby")
  end
end

Given /^I have searched for ruby$/ do
  steps '* I am on Google
         * I search for ruby'
end

Given /^I click the Ruby link$/ do
  on(Google::ResultPage) do |page|
    page.browser.wait_until {
      page.results?
    }
    page.ruby_home
  end
end

Given /^I am on the Ruby home page$/ do
  @browser.wait(10)
  fail 'Not on the Ruby home page' unless on(Ruby::HomePage).download_ruby?
end