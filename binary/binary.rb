class Binary

  def initialize(binary)
    @binary = binary
  end

  def to_decimal(i=0,sum=0)
    bin_length = @binary.length - 1
    # @binary[0]*2^bin_length + (@binary[1]*2^bin_length - 1) + (@binary[1]*2^bin_length - 1)
    @binary.split(//).each do |rep|
      sum += (rep[i].to_i)*2^bin_length
      i+=1
      bin_length -= 1
    end
    sum
  end


    # 1*2^1 + 1*2^0

    # bin_length = @binary.length, i = 0, sum = 0

    # string_array = @binary.chars.to_i
    # while bin_length > 0
    #   sum += (string_array[i].to_i)*2^bin_length
    #   bin_length -= 1
    #   i+=1
    # end
    # string_array

end
