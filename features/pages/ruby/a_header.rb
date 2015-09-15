module Ruby
  module Header
    include PageObject

	div :header_div, id: 'header_content'
    link(:header_home) { |page| page.header_div_element.link(href: '/en/')}
	
    link(:header_downloads) { |page| page.header_div_element.link(href: '/en/downloads/')}
    link(:header_documentation) { |page| page.header_div_element.link(href: '/en/documentation/')}
    link(:header_libraries) { |page| page.header_div_element.link(href: '/en/libraries/')}
    link(:header_community) { |page| page.header_div_element.link(href: '/en/community/')}
    link(:header_news) { |page| page.header_div_element.link(href: '/en/news/')}
    link(:header_security) { |page| page.header_div_element.link(href: '/en/security/')}
    link(:header_about_ruby) { |page| page.header_div_element.link(href: '/en/about/')}
	
  end
end