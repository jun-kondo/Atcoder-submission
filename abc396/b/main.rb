#!/usr/bin/env ruby
# frozen_string_literal: true

q = gets.to_i
deck = [0] * 100
(0...q).each do
  type, x = gets.split.map(&:to_i)
  case type
  when 1
    deck.unshift(x)
  when 2
    y = deck.shift
    puts y
  end
end
