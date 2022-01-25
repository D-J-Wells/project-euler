# frozen_string_literal: true

# sums even fibonacci numbers whose values are less then 4_000_000
def even_fibonacci(num, out = [0, 1])
  # indexed this way since out[-1] has to overshoot to be detected > 4_000_000
  return out[0..-2].select(&:even?).sum if out[-1] > num

  even_fibonacci(num - 1, out << (out[-1] + out[-2]))
end

puts even_fibonacci(4_000_000)
