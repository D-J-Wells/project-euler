# frozen_string_literal: true

# finds the least common multiple of a range of numbers up to the input number
def smallest_multiple(div_num = 20)
  i = 1
  i += 1 until (i * div_num).divisible_by_upto?(div_num)
  i * div_num
end

# adding method to integer
class Integer
  def divisible_by_upto?(num)
    (1...num).each { |d| return false unless (self % d).zero? }
  end
  true
end

puts smallest_multiple
