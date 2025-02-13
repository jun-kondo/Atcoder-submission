#!/usr/bin/env ruby
# frozen_string_literal: true

# https://atcoder.jp/contests/abc366/tasks/abc366_c
q = gets.to_i
h = {}
h.default = 0
ans = 0
add_cnt = lambda { |x, c|
  ans -= 1 if h[x] > 0
  h[x] += c
  ans += 1 if h[x] > 0
}
q.times do
  type, x = gets.split.map(&:to_i)
  case type
  when 1
    add_cnt[x, 1]
  when 2
    add_cnt[x, -1]
  when 3
    puts ans
  end
end
