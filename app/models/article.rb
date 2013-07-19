# == Schema Information
#
# Table name: articles
#
#  id              :integer          not null, primary key
#  huff_title      :text
#  huff_link       :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  nytimes_link    :text
#  nytimes_title   :text
#  fox_link        :text
#  fox_title       :text
#  wsjournal_link  :text
#  wsjournal_title :text
#  nypost_link     :text
#  nypost_title    :text
#

class Article < ActiveRecord::Base
  attr_accessible :huff_title, :huff_link, :nytimes_title, :nytimes_link, :fox_link, :fox_title,
  	:nypost_link, :nypost_title

end
