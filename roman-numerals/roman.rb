class Fixnum

  ROM_CONVERSION = [
    M: 1000,
    CM: 900,
    D: 500,
    CD: 400,
    C: 100,
    XC: 90,
    L: 50,
    XL: 40,
    X: 10,
    IX: 9,
    V: 5,
    IV: 4,
    I: 1
  ]

  def to_roman(value = self, roman = '', i=0)
    until value ==0
      if value/ROM_CONVERSION[i][1] >=1
        roman << ROM_CONVERSION[i].key.to_s
        value -= ROM_CONVERSION[i]
      end
      i+=1
    end

    return roman
  end

# THIS SOLUTION WORKS - use as model for potential solution above

  # def to_roman(value = self, roman = '')
  #   (roman<<'M'*(value/1000) && value %=1000) if value/1000 >= 1
  #   (roman<<'CM' && value -= 900) if value >= 900
  #   (roman<<'D' && value -=500) if value/500 >= 1
  #   (roman<<'CD' && value -= 400) if value >= 400
  #   (roman<<'C'*(value/100) && value%=100) if value/100 >= 1
  #   (roman<<'XC' && value -= 90) if value >= 90
  #   (roman<<'L' && value -=50) if value/50 >= 1
  #   (roman<<'XL' && value -= 40) if value >= 40
  #   (roman << 'X'*(value/10) && value%=10) if value/10 >= 1
  #   (roman << 'IX' && value = 0) if value == 9
  #   (roman << 'V' && value -= 5) if value >= 5
  #   (roman << 'IV' && value = 0) if value == 4
  #   roman << 'I'*(value%5/1) if value > 0
  #
  #   return roman
  #
  # end

end
