require 'nokogiri'
require 'open-uri'

task :page_scrape => :environment do

  huff_title = ''
  huff_link = ''
  nytimes_title = ''
  nytimes_link = ''
  fox_title = ''
  fox_link = ''
  wsjournal_title = ''
  wsjournal_link = ''
  nypost_title = ''
  nypost_link = ''



  doc = Nokogiri::HTML(open('http://www.huffingtonpost.com'))
  data = doc.css("h5")
  data.each do |a|
    huff_title = a.content.strip
    a.children.each do |x|
      x.each do |link|
        huff_link = link.last
      end
    end
  end

  doc = Nokogiri::HTML(open('http://www.foxnews.com'))
  data = doc.xpath("//*[@id='section']/div[2]/div/div[1]/h1/a")
  data.each do |a|
    fox_title = a.content.strip
    fox_link = a.attr('href')
  end

  doc = Nokogiri::HTML(open('http://www.newyorktimes.com'))
  data = doc.css(".story>h2>a")
  data.each do |a|
    nytimes_title = a.content.strip
    nytimes_link = a.attr('href')
  end

  doc = Nokogiri::HTML(open('http://www.nypost.com/'))
  data = doc.css("#top-story-item-1>img")
  data.each do |a|
    array = a.first
    nypost_title = array[1]
  end

  doc = Nokogiri::HTML(open('http://www.nypost.com/'))
  data = doc.css("#top-story-item-1>h2>a")
  data.each do |a|
    array = a.first
    nypost_link = array[1]
  end

  # doc = Nokogiri::HTML(open('http://online.wsj.com/home-page'))
  # data = doc.css(".tipTarget>a")
  # data.each do |a|
  #   binding.pry
  #   wsjournal_title = a.content.strip
  #   wsjournal_link = a.attr('href')
  # end

  @article = Article.new(
  :huff_link => huff_link,
  :huff_title => huff_title,
  :nytimes_link => nytimes_link,
  :nytimes_title => nytimes_title,
  :fox_link => fox_link,
  :fox_title => fox_title,
  :nypost_link => nypost_link,
  :nypost_title => nypost_title
  )

  @article.save
end



