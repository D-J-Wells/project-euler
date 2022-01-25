# frozen_string_literal: true

# finds largest prime factor of a given number
def largest_prime_factor(num, factors = [])
  return factors.max if num < 3

  (2...num).each do |fact|
    next unless prime(fact) && (num % fact).zero?

    num /= fact
    factors << fact
    return largest_prime_factor(num, factors)
  end
  num
end

def prime(num)
  return true if num == 2

  (2...num).each { |fact| return false if (num % fact).zero? }
  true
end

puts largest_prime_factor(600_851_475_143)
