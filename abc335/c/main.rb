#!/usr/bin/env ruby
# frozen_string_literal: true

update_position = lambda do |pos, dir|
  i, j = pos
  case dir
  when 'U'
    [i, j + 1]
  when 'R'
    [i + 1, j]
  when 'D'
    [i, j - 1]
  when 'L'
    [i - 1, j]
  else
    pos
  end
end

n, q = gets.split.map(&:to_i)
positions = (1..n).map { |i| [i, 0] }
(0...q).each do
  query, s = gets.split
  case query.to_i
  when 1
    current_position = positions.first
    new_position = update_position.call(current_position, s)
    positions.unshift(new_position)
    positions.pop
  when 2
    idx = s.to_i.pred
    puts positions[idx].join(' ')
  end
end
