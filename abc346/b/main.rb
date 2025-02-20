#!/usr/bin/env ruby
# frozen_string_literal: true

w, b = gets.split.map(&:to_i)
wb = ('w' * w + 'b' * b).chars
piano = ('wbwbwwbwbwbw' * 17).chars.slice(0, 200)

(0...piano.size - wb.size).each do |i|
  if piano[i, wb.size].sort == wb.sort
    puts 'Yes'
    exit
  end
end
puts 'No'
