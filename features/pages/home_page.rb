class HomePage
  include PageObject
  
  page_url 'https://www.google.com'
  
  text_field :search, name: 'q'
  
end