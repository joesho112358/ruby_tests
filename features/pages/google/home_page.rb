module Google
  class HomePage
    include PageObject
  
    page_url 'https://www.google.com'
  
    text_field :search, name: 'q'
    button :search_button, name: 'q'
	
	def search_for(text)
	  self.search_element.when_present
	  self.search = text
	  browser.wait(10)
	  browser.send_keys :enter
	end
	
  end
end