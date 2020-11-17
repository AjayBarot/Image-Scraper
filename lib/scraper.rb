# frozen_string_literal: true

require 'rest-client'
require 'nokogiri'
require 'uri'

class Scraper
  # 
  # constructor method
  # @param url [String] [input URL]
  #
  def initialize(url)
    @url = url
  end

  # 
  # validation process 
  # for url
  # 
  # @return [Boolean] [true or false of result]  
  def valid_url?
    @url =~ URI::regexp
  end

  # 
  # Postive common method
  # for multiple conditions
  # for future use
  # @return [Boolean] [true or false of result]  
  def all_valid?
    valid_url?
  end

  # 
  # scrap the images from url
  # 
  # @return [Array] [Array of images]  
  def grab_the_images
    get_the_url = RestClient.get(@url)
    doc         = Nokogiri::HTML(get_the_url)
    images      = doc.search('img').map{ |img| img['src'] }
    images
  end
end