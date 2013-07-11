require 'nokogiri'
require 'open-uri'

task :huff_front_page => :environment do

  title = ''
  link = ''

  doc = Nokogiri::HTML(open('http://www.huffingtonpost.com'))
  data = doc.css("h5")
  data.each do |a|
    title = a.content.strip
    a.children.each do |x|
      x.each do |test|
        link = test.last
        @article = Article.new(
          :huff_link => title,
          :huff_title => link
          )

        @article.save
      end
    end
  end

  # article.each do |column|
  #   column.huff_link = link
  #   column.huff_title = title
  # end
end

