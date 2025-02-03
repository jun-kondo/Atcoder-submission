#!/usr/bin/env ruby
# frozen_string_literal: true

N = gets.to_i

(1..N).each do |x|
  price = (x * 1.08).to_i
  if price == N
    puts x
    exit
  end
end

puts ':('
