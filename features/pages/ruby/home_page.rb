module Ruby
  class HomePage
    include PageObject
  
    page_url 'https://www.ruby-lang.org'
  
    link :download_ruby, href: 'downloads/'
	
  end
end