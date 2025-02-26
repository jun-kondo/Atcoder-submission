#!/usr/bin/env ruby
# frozen_string_literal: true

N, S, M, L = gets.split.map(&:to_i)
s_pack = 6
m_pack = 8
l_pack = 12

s = (N + s_pack - 1) / s_pack
m = (N + m_pack - 1) / m_pack
l = (N + l_pack - 1) / l_pack

ans = 10**9
(0..s).each do |i|
  (0..m).each do |j|
    (0..l).each do |k|
      if s_pack * i + m_pack * j + l_pack * k >= N
        price = S * i + M * j + L * k
        ans = [ans, price].min
      end
    end
  end
end
puts ans
