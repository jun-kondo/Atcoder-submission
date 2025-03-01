#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
s = gets.chomp.chars

ans = nil
(0...n - 2).each do |i|
  if [s[i], s[i + 1], s[i + 2]].join == 'ABC'
    ans = i + 1
    break
  end
end

puts ans || '-1'
