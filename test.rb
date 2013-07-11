require 'nokogiri'
require 'open-uri'
require 'pry'


doc = Nokogiri::HTML(open('http://www.huffingtonpost.com'))
title = []
link = []
data = doc.css("div#splash_block")
data.each do |a|
	title << a.content
end

doc1 = Nokogiri::HTML(open('http://www.huffingtonpost.com'))
data1 = doc.css("h5")
data1.each do |a|
	link << a.content
end
    
