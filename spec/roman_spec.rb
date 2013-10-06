require 'rspec'
require 'roman.rb'

describe 'roman_numeral' do
  it 'takes a number and outputs its roman numeral equivalent in the ones' do
    roman_numeral(4).should eq 'IV'
  end
  it 'takes a number and outputs its roman numeral equivalent in the teens' do
    roman_numeral(17).should eq 'XVII'
  end
  it 'takes a number and outputs its roman numeral equivalent above 19 but below 99' do
    roman_numeral(36).should eq 'XXXVI'
  end

    it 'takes a number and outputs its roman numeral equivalent above 99 but below 1000' do
    roman_numeral(999).should eq 'CMXCIX'
  end
  it 'takes a number and outputs its roman numeral equivalent above 99 but below 1000' do
    roman_numeral(3888).should eq 'MMMDCCCLXXXVIII'
  end
  it 'takes a number and outputs its roman numeral equivalent above 99 but below 1000' do
    roman_numeral(3889).should eq 'Sorry, roman numerals max at 3888. They were kinda noobs.'
  end
end
