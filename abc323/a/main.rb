#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets.chomp.chars
ans = true
s.each.with_index(1) do |c, i|
  ans = false if i.even? && (c != '0')
end
puts ans ? 'Yes' : 'No'
