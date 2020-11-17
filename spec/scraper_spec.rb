require 'rspec'
require './lib/scraper'

describe Scraper do
  let(:url) { 'https://www.wikipedia.org/' }

  describe '#initialize' do
    it 'should be an instance of Scraper' do
      instance = Scraper.new('')

      expect(instance).to be_a Scraper
    end
  end

  describe '#valid_url?' do
    it 'should return valid result' do
      instance = Scraper.new(url)

      expect(instance.valid_url?).to be == 0
    end

    it 'should return invalid result' do
      instance = Scraper.new('sdadsdsa')

      expect(instance.valid_url?).to eq nil
    end
  end

  describe '#all_valid?' do
    it 'should return valid result' do
      instance = Scraper.new('')

      expect(instance.all_valid?).to eq nil
    end

    it 'should return invalid result' do
      instance = Scraper.new(url)

      expect(instance.all_valid?).to be == 0
    end
  end

  describe '#grab_the_images' do
    it 'should return list of images from input URL' do
      instance = Scraper.new(url)

      expect(instance.grab_the_images).to be_a Array
    end
  end
end