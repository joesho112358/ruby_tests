class ResultPage
  include PageObject
  
  link :ruby_download, text: 'Ruby Programming Language'
  
  ordered_list :results, id: 'rso'
  
end