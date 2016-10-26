class FrontpageController < ApplicationController
  # require 'http'

  def index
    date = '20131119'
    @latest = JSON.parse(HTTP.get("http://news-at.zhihu.com/api/4/news/latest").to_s)
    @before = JSON.parse(HTTP.get("http://news.at.zhihu.com/api/4/news/before/#{date}").to_s)
  end

  def detail
    @detail = JSON.parse(HTTP.get("http://news-at.zhihu.com/api/4/news/#{params['id']}").to_s)
  end

  private
  def counter
    id = params['id']
    @counter = JSON.parse(HTTP.get("http://news-at.zhihu.com/api/4/story-extra/#{id}"))
  end
end
