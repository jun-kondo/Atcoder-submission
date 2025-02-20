#!/usr/bin/env ruby
# frozen_string_literal: true

# https://atcoder.jp/contests/abc345/tasks/abc345_c
# 文字列から任意の2文字を選択して入れ替えたあとの文字列の数を答える
s = gets.chomp.chars
n = s.size
# 文字列sの各文字をカウント
cnt = s.tally
# 同じ文字を2つ選択したときの組み合わせをカウントしている。
same = cnt.values.sum { |v| v * (v - 1) / 2 }
# 組み合わせの総数 ‐ 入れ替えても変化しない(同じ文字を入れ替える)組み合わせ
diff = n * (n - 1) / 2 - same
ans = diff
ans += 1 unless same == 0
puts ans
