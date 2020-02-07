Given /^I visit the Ruby home page$/ do
  visit Ruby::HomePage
end

Given /^I click (downloads|documentation|libraries|community|news|security|about ruby) (header|footer)$/ do |element, location|
  on(Ruby::HomePage).send "#{ location }_#{ element.gsub(' ', '_') }"
  @browser.wait_until { @browser.url != "https://www.ruby-lang.org/en/" }
end

Given /^I am on the (downloads|documentation|libraries|community|news|security|about ruby) page$/ do |element|
  case element
    when 'downloads'
      fail 'Downloads text not found' unless @current_page.text.match 'Here you can get the latest Ruby distributions in your favorite flavor. The current stable version is \d+\.\d.*. Please be sure to read Ruby’s License.'
    when 'documentation'
      fail 'Documentation text not found' unless @current_page.text.include? 'Guides, tutorials, and reference material to help you learn more about Ruby'
    when 'libraries'
      fail 'Libraries text not found' unless @current_page.text.include? 'As most programming languages, Ruby leverages a wide set of third-party libraries.'
    when 'community'
      fail 'Community text not found' unless @current_page.text.include? 'The community that grows up around a programming language is one of its most important strengths. Ruby has a vibrant and growing community that is friendly towards people of all skill levels.'
    when 'news'
      fail 'News text not found' unless @current_page.text.include? 'Recent News'
      fail 'News text not found' unless @current_page.text.include? 'Archives by Year'
    when 'security'
      fail 'Security text not found' unless @current_page.text.include? 'Here you will find information about security issues of Ruby.'
    when 'about ruby'
      fail 'About ruby text not found' unless @current_page.text.include? 'Wondering why Ruby is so popular? Its fans call it a beautiful, artful language. And yet, they say it’s handy and practical. What gives?'
    else
      fail 'Well this was unexpected....' 
  end
end
