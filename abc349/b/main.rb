#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets.chomp.chars
cnt = {}
cnt.default = 0
s.tally.each do |_k, v|
  cnt[v] += 1
end
ans = cnt.all? { |_k, v| [0, 2].include?(v) }
puts ans ? 'Yes' : 'No'
