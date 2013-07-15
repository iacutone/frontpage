require 'nokogiri'
require 'open-uri'
require 'pry'

# wsjournal_title = ''
# wsjournal_link = ''

  doc = Nokogiri::HTML(open('http://online.wsj.com/home-page'))
  data = doc.xpath("//*[@id='module_2_4_wide_right']/ul/li/h2/a")
  data.each do |a|
  	binding.pry
    wsjournal_title = a.content.strip
    wsjournal_link = a.attr('href')
  end
nytimes_link = ''
nytimes_title = ''

 doc = Nokogiri::HTML(open('http://www.newyorktimes.com'))
  data = doc.xpath("//*[@id='photoSpotRegion']/div/div/h3/a")
  data.each do |a|
    nytimes_link = data[0].attr('href')
    a.children.each do |x|
    	binding.pry
      nytimes_title = x.content.strip
    end
  end


