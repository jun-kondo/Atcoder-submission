#!/usr/bin/env ruby
# frozen_string_literal: true

def check_ham_dist(s, t)
  return 999 if s.size != t.size # 長さが同じかどうか確認 falseの場合は適当な大きい数

  res = 0
  (0...s.size).each do |i|
    res += 1 if s[i] != t[i]
  end
  res
end

def check_subarray(s, t) # tがsの部分列かどうかチェック、tの方が短い
  return false if s.size != t.size + 1

  si = 0
  (0...t.size).each do |ti|
    si += 1 while si < s.size && s[si] != t[ti]
    return false if si == s.size

    si += 1
  end
  true
end

n, t = gets.split

n = n.to_i
ans = []
(0...n).each do |i|
  ok = false
  s = gets.chomp
  if (s.size - t.size).abs <= 1
    ok = true if check_subarray(s, t)
    ok = true if check_subarray(t, s)
    ok = true if check_ham_dist(t, s) <= 1 # ハミング距離1以下
  end
  ans << i + 1 if ok
end
puts ans.size
puts ans.join(' ')

# 文字列tに対して入力されるn回入力される文字列の編集距離が1以下であるか求める問題
# 問題の内容からs, tの長さの差が1以下のtに対して2つのメソッドで判定した
# 1．check_subarray(s, t) tはsの部分列かどうか
#   どちらが長いかはわからないので引数を入れ替えて二回実行する必要がある
# 2．check_ham_dist ハミング距離が1以下かどうか
