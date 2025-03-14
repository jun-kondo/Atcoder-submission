#!/usr/bin/env ruby
# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
s = gets.chomp
c = gets.split.map(&:to_i)

lists = Array.new(m) { [] }
(0...n).each do |i|
  color = c[i] - 1
  lists[color] << i
end

ans = ['*'] * n
lists.each do |list|
  new_list = list.dup
  last = new_list.pop
  new_list.unshift(last)
  (0...list.size).each do |i|
    pos_org = list[i]
    pos_new = new_list[i]
    ans[pos_org] = s[pos_new]
  end
end
puts ans.join
