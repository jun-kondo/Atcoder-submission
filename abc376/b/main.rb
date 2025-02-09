#!/usr/bin/env ruby
# frozen_string_literal: true

def num_move(n, from, to, ng)
  # スワップする => 距離の計算なので入れ替わっても問題ない
  # 時計回りに移動方向を統一できる
  from, to = to, from if from > to
  if from < ng && ng < to
    # 現在地と目的地の間に反対の手があれば逆回り
    n + from - to
  else
    to - from
  end
end

n, q = gets.split.map(&:to_i)
l = 1
r = 2
res = 0
q.times do
  h, t = gets.split.map(&:chomp)
  t = t.to_i
  if h == 'R'
    res += num_move(n, r, t, l)
    r = t
  elsif h == 'L'
    res += num_move(n, l, t, r)
    l = t
  end
end
puts res
