module Ruby
  class DocumentationPage
    include PageObject
	include Ruby::Header
	include Ruby::Footer
  
    page_url 'https://www.ruby-lang.org/en/documentation/'
  
	
  end
end