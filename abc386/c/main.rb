#!/usr/bin/env ruby
# frozen_string_literal: true

k = gets.to_i # kは問題文では1であることが保証される
s = gets.chomp
t = gets.chomp

# 既に同じなら操作不要
if s == t
  puts 'Yes'
  exit
end

# 文字列の長さの差が1以外なら1回の操作で一致させるのは不可能
if (s.length - t.length).abs != 1 && s.length != t.length
  puts 'No'
  exit
end

# 文字数が同じ場合：1文字だけ異なれば置換で一致可能
if s.length == t.length
  diff = 0
  s.length.times do |i|
    diff += 1 if s[i] != t[i]
  end
  puts diff == 1 ? 'Yes' : 'No'
  exit
end

# s.length + 1 == t.length の場合：sに1文字挿入すれば良い
# のだがs，tをスワップして下のs.length == t.length + 1 の場合とまとめる
s, t = t, s if s.length + 1 == t.length

# s.length == t.length + 1 の場合：sから1文字削除すれば良い
if s.length == t.length + 1
  i = 0
  j = 0
  deleted = false
  while i < s.length && j < t.length
    if s[i] == t[j]
      i += 1
      j += 1
    else
      if deleted
        puts 'No'
        exit
      end
      deleted = true
      i += 1
    end
  end
  puts 'Yes'
  exit
end

# 万一どの分岐にも該当しなかった場合
puts 'No'
