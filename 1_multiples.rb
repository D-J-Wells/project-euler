# frozen_string_literal: true

# sums all multiples of 3 and 5 under 'max'
def multiples(max, output = 0)
  return output if max < 3

  output += ((max % 3).zero? || (max % 5).zero?) ? max : 0
  multiples(max - 1, output)
end

puts multiples(999)
