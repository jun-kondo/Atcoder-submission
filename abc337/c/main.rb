#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)
hash = {}
(0...n).each { |i| hash[a[i]] = i + 1 }

ans = []
ans << hash[-1]
(n - 1).times { ans << hash[ans[-1]] }

puts ans.join(' ')
