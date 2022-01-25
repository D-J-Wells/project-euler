# frozen_string_literal: true

def largest_palindrome(max_num, pal = 0)
  return pal if max_num.zero?

  max_num.downto(0) do |num|
    prod = max_num * num
    pal = prod if (prod > pal) && (prod.to_s == prod.to_s.reverse)
  end
  largest_palindrome(max_num - 1, pal)
end

puts largest_palindrome(999)
