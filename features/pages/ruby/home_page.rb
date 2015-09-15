module Ruby
  class HomePage
    include PageObject
	include Ruby::Header
	include Ruby::Footer
  
    page_url 'https://www.ruby-lang.org'
  
    link :download_ruby, href: 'downloads/'
	
  end
end