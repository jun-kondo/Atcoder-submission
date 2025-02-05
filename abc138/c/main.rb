#!/usr/bin/env ruby
# frozen_string_literal: true

N = gets.to_s.to_i  # 整数1つを受け取る(1行に1つ整数がある前提)#
V = gets.split.map(&:to_i).sort
ans = V.inject(V[0]) { |result, item| (result + item).to_f / 2 }
puts ans
