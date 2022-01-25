# frozen_string_literal: true

def even_fibonacci(num, out = [0, 1])
  return out[0..-2].select(&:even?).sum if out[-1] > num

  even_fibonacci(num - 1, out << (out[-1] + out[-2]))
end

puts even_fibonacci(4_000_000)
