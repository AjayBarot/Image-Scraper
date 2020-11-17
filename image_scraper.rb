#!/usr/bin/ruby
# frozen_string_literal: true

require_relative './lib/scraper'
require_relative './lib/exception'

$stdout.print "Enter the URL from which you want to scrape the images\n"

input     = gets.chomp
scraper   = Scraper.new(input)

if !scraper.all_valid?
  $stdout.print "Following error in input\n"
  exception = Exception.new(scraper)
  pp exception.error_message
else
  $stdout.print "Output\n"
  pp scraper.grab_the_images 
end
