# frozen_string_literal: true

def multiples(max, output = 0)
  return output if max < 3

  dig = max.digits
  output += ((dig.sum % 3).zero? || [0, 5].include?(dig[-1])) ? max : 0
  max -= 1
  multiples(max, output)
end

puts multiples(1000)
