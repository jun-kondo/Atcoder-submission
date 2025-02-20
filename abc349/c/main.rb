#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets.chomp
t = gets.chomp
i = 0
j = 0
while i < t.size && j < s.size
  i += 1 if t[i].downcase == s[j]
  j += 1
end

if i == 3
  puts 'Yes'
elsif i == 2 && t[-1] == 'X'
  puts 'Yes'
else
  puts 'No'
end
