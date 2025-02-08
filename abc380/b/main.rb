#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets.chomp.chars
res = []
count = 0
(1...s.size).each do |i|
  if s[i] == '-'
    count += 1
  else
    res << count
    count = 0
  end
end
puts res.join(' ')
