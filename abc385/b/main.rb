#!/usr/bin/env ruby
# frozen_string_literal: true

h, w, x, y = gets.split.map(&:to_i)
s = Array.new(h) { gets.chomp.chars }
t = gets.chomp.chars
px = x - 1
py = y - 1
visited = Set.new
t.size.times do |i|
  case t[i]
  when 'U'
    px -= 1 if s[px - 1][py] != '#'
  when 'D'
    px += 1 if s[px + 1][py] != '#'
  when 'L'
    py -= 1 if s[px][py - 1] != '#'
  when 'R'
    py += 1 if s[px][py + 1] != '#'
  end
  visited << [px, py] if s[px][py] == '@'
end
res = [px + 1, py + 1, visited.size]
puts res.join(' ')
