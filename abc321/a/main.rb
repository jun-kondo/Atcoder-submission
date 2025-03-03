#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.chomp.chars
n_size = n.size

ans = true
(0...n_size - 1).each do |i|
  ans = false if n[i].to_i <= n[i + 1].to_i
end
puts ans ? 'Yes' : 'No'
