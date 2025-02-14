#!/usr/bin/env ruby
# frozen_string_literal: true

n, q = gets.split.map(&:to_i)
s = gets.chomp.chars
ans = s.join.scan(/ABC/).size
add_cnt = ->(i, cnt) { ans += cnt if s[i, 3].join == 'ABC' }
q.times do
  x, c = gets.split
  x = x.to_i - 1
  # 切り取りの起点と終点
  start = [0, x - 2].max # 添字が配列の範囲外にならないようにする
  end_ = [n - 3, x].min # 三文字をよみとりたいので、右に二文字あるようにする
  (start..end_).each { |i| add_cnt[i, -1] }
  s[x] = c
  (start..end_).each { |i| add_cnt[i, 1] }
  puts ans
end
