#!/usr/bin/env ruby
# frozen_string_literal: true

# https://atcoder.jp/contests/abc356/tasks/abc356_c
n, m, k = gets.split.map(&:to_i)
as = {}
as.default = 0
r = {}

(0...m).each do |i|
  input = gets.chomp.split
  c = input.shift.to_i
  (0...c).each do |_j|
    a = input.shift.to_i
    a -= 1
    # 使用した鍵をビットマスクとして格納
    as[i] |= (1 << a)
  end
  r[i] = input.shift.to_s
end
ans = 0
# 各鍵の正しいorダミーかの組み合わせはn^2通りあるので全探索する
(0...1 << n).each do |s|
  ok = true
  # m回のテスト分ループする
  # 現在の組み合わせがすべてのテスト結果と一致するか
  (0...m).each do |i|
    # テストで使用された鍵と現在の組み合わせで一致する鍵の本数を調べる
    num = (as[i] & s).to_s(2).count('1')
    # 正しい鍵の数の条件と結果が一致するか確認
    ok = false if (num >= k) != (r[i] == 'o')
  end
  ans += 1 if ok
end
puts ans
