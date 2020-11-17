# frozen_string_literal: true

class Exception
  # 
  # Exception handling class
  # @param scraper_obj [Object] [object of scraper class]
  #
  def initialize(scraper_obj)
    @scraper_obj = scraper_obj
  end

  # 
  # collect errors
  # 
  # @return [Array] [Array of all errors]  
  def error_message
    error = []
    error << 'Invalid url' unless @scraper_obj.valid_url?
    error
  end
end