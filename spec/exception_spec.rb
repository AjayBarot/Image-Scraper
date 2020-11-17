require 'rspec'
require './lib/exception'
require './lib/scraper'

describe Exception do
  describe '#initialize' do
    it 'should be an instance of Exception' do
      instance = Exception.new(Scraper.new(''))

      expect(instance).to be_a Exception
    end
  end

  describe '#error_message' do
    it 'should be array of error_messages' do
      instance = Exception.new(Scraper.new(''))

      expect(instance.error_message).to be_a Array
    end

    it 'should be contain errors' do
      instance = Exception.new(Scraper.new(''))

      expect(instance.error_message).to include 'Invalid url'
    end
  end
end