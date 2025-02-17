#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets.chomp
u = []
d = []
s.each_char do |c|
  c.match?(/[a-z]/) ? d.push(c) : u.push(c)
end
if u.size > d.size
  s.upcase!
else
  s.downcase!
end
puts s
