#!/usr/bin/env ruby
# frozen_string_literal: true

s, t = gets.split

(1...s.size).each do |w|
  (0...w).each do |c|
    nt = ''
    # w文字毎に区切った文字列のc番目の文字を一つづつ取り出す
    # 区切った文字のc番目を縦読みした文字列が抽出される
    (c...s.size).step(w) { |i| nt += s[i] }
    if nt == t
      puts 'Yes'
      exit
    end
  end
end

puts 'No'
