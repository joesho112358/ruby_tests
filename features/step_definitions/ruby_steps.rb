Given /^I visit the Ruby home page$/ do
  visit Ruby::HomePage
end

Given /^I click documentation header$/ do
  on(Ruby::HomePage).header_documentation
end

Given /^I am on the documentation page$/ do
  fail 'Documentation text not found' unless @current_page.text.include? 'Here you will find pointers to manuals, tutorials and references that will come in handy when you feel like coding in Ruby.'
end