require 'nokogiri'
require 'open-uri'
require 'pry'

# wsjournal_title = ''
# wsjournal_link = ''

  # doc = Nokogiri::HTML(open('http://online.wsj.com/home-page'))
  # data = doc.xpath("//*[@id='module_2_4_wide_right']/ul/li/h2/a")
  # data.each do |a|
  # 	binding.pry
  #   wsjournal_title = a.content.strip
  #   wsjournal_link = a.attr('href')
  # end
nypost_link = ''
nypost_title = ''

 doc = Nokogiri::HTML(open('http://www.nypost.com/'))
  data = doc.css("#top-story-item-1>img")
  data.each do |a|
    array = a.first
    nypost_link = array[1]
  end

  doc = Nokogiri::HTML(open('http://www.nypost.com/'))
  data = doc.css("#top-story-item-1>h2>a")
  data.each do |a|
    array = a.first
    nypost_title = array[1]
  end

  


