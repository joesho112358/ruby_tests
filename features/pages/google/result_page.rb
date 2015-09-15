module Google
  class ResultPage
    include PageObject
  
    link :ruby_home, text: 'Ruby Programming Language'
  
    ordered_list :results, id: 'rso'
  end
end