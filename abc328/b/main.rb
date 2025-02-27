#!/usr/bin/env ruby
# frozen_string_literal: true

def check?(m, d)
  s = m.to_s + d.to_s
  s = s.chars.sort
  s[0] == s[-1]
end

n = gets.to_i
D = gets.split.map(&:to_i)

ans = 0
(1..n).each do |i| # 1月~n月
  e = D[i - 1]
  (1..e).each do |j| # 1~e日
    ans += 1 if check?(i, j)
  end
end
puts ans

# ゾロ目の日付をカウントする問題
# ゾロ目かどうか確認する方法がわかり辛かった。
# やり方は日付(月、日)を文字列にして連結→ソートして最初と最後が同じかを判定する
# trueならゾロ目
