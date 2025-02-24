#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets.chomp
r = 0
res = []
while r < s.length
  if (s[r] == ')' && res.last == '(') || (s[r] == ']' && res.last == '[') || (s[r] == '>' && res.last == '<')
    res.pop
  else
    res.push(s[r])
  end
  r += 1
end
if res.size == 0
  puts 'Yes'
else
  puts 'No'
end
