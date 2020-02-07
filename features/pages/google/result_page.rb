module Google
  class ResultPage
    include PageObject
  
    div :results, id: 'rso'
    
    link(:ruby_home) { results_element.link }

  end
end