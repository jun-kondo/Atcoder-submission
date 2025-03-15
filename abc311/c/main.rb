#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
a = gets.split.map { |i| i.to_i - 1 }
visited = Array.new(n, false)

dfs = lambda do |list|
  current = list.last
  if visited[current]
    start = list.index(list.pop)
    ans = list[start..-1]
    puts ans.size
    puts ans.map(&:succ).join(' ')
    exit
  end
  visited[current] = true
  list << a[current]
  dfs.call(list)
end

dfs.call([0])
