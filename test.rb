require 'nokogiri'
require 'open-uri'
require 'pry'

title = ''
link = ''

doc = Nokogiri::HTML(open('http://www.huffingtonpost.com'))
data = doc.css("h5")
data.each do |a|
	title = a.content.strip
	a.children.each do |x|
		x.each do |test|
			link = test.last
		end
	end
end


