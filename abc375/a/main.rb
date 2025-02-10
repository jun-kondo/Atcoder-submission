#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
s = gets.chomp.chars
ans = 0
now = 0

while now < n
  if s.slice(now, 3).join == '#.#'
    ans += 1
    now += 2
  else
    now += 1
  end
end
puts ans
