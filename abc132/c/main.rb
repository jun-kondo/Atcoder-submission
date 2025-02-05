#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_s.to_i # 整数1つを受け取る(1行に1つ整数がある前提)#
tests = gets.split.map(&:to_i).sort

puts tests[n / 2] - tests[n / 2 - 1]
