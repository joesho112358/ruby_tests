#put a_ in the name so it would be loaded before other pages
#otherwise you need a require_relative in the files before to include
module Ruby
  module Footer
    include PageObject

	div :footer_div, id: 'header_content'
    link(:footer_home) { |page| page.footer_div_element.link(href: '/en/')}
	
    link(:footer_downloads) { |page| page.footer_div_element.link(href: '/en/downloads/')}
    link(:footer_documentation) { |page| page.footer_div_element.link(href: '/en/documentation/')}
    link(:footer_libraries) { |page| page.footer_div_element.link(href: '/en/libraries/')}
    link(:footer_community) { |page| page.footer_div_element.link(href: '/en/community/')}
    link(:footer_news) { |page| page.footer_div_element.link(href: '/en/news/')}
    link(:footer_security) { |page| page.footer_div_element.link(href: '/en/security/')}
    link(:footer_about_ruby) { |page| page.footer_div_element.link(href: '/en/about/')}
	
  end
end