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
#

require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
