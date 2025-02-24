#!/usr/bin/env ruby
# frozen_string_literal: true

h, w = gets.split.map(&:to_i)
i, j = gets.split.map(&:to_i)
c = Array.new(h) { gets.chomp.tr('.#', '10') }.join
x = gets.chomp.chars

bit_move = { 'L' => -1, 'R' => 1, 'U' => -w, 'D' => w }
pos = (i - 1) * w + (j - 1)

x.each do |xi|
  np = pos + bit_move[xi]
  # 左右移動のときに行が変わってないか
  next if %w[L R].include?(xi) && (np / w != pos / w)
  next unless np >= 0 && np < (h * w)

  pos = np if c[np] == '1'
end
ans = []
ans << (pos / w + 1)
ans << (pos % w + 1)
puts ans.join(' ')
