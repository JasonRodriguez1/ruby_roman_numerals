def roman_numeral(number)
  roman_numerals = []
  symbol = {
                1 => "I",
                2 => "II",
                3 => "III",
                4 => "IV",
                5 => "V",
                6 => "VI",
                7 => "VII",
                8 => "VIII",
                9 => "IX",
                10 => "X",
                11 => "XI",
                12 => "XII",
                13 => "XIII",
                14 => "XIV",
                15 => "XV",
                16 => "XVI",
                17 => "XVII",
                18 => "XVIII",
                19 => "XIX",
                20 =>  "XX",
                30 => "XXX",
                40 => "XL",
                50 => "L",
                60 => "LX",
                70 => "LXX",
                80 => "LXXX",
                90 => "XC",
                100 => "C",
                200 => "CC",
                300 => "CCC",
                400 => "CD",
                500 => "D",
                600 => "DC",
                700 => "DCC",
                800 => "DCCC",
                900 => "CM",
                1000 => "M",
                2000 => "MM",
                3000 => "MMM"
  }
  if number > 3888
  'Sorry, roman numerals max at 3888. They were kinda noobs.'
  else  
    if symbol.has_key? number % 100
       roman_numerals << symbol[number % 100]
    elsif number % 100 > 0
      roman_numerals << symbol[((number % 100)/10)*10] + symbol[(number % 10)]    
    end
    if number % 1000 > 0
      roman_numerals << symbol[((number % 1000)/100)*100]   
    end  
    if number / 1000 > 0
      roman_numerals << symbol[(number/1000)*1000]
    end
    roman_numerals.reverse.join('')
  end  
end






