#!/usr/bin/env ruby
# frozen_string_literal: true

excluded_number = gets.to_i # 除外する数字を受け取る

# 直接すべての積を計算し、除外する値以外を加算していく
result = (1..9).sum do |i|
  (1..9).sum do |j|
    value = i * j
    value == excluded_number ? 0 : value
  end
end

puts result
