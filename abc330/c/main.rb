#!/usr/bin/env ruby
# frozen_string_literal: true

d = gets.to_i

ans = d # ansの初期値(最大値) (x**2+y**2)==0のとき |x**2 + y**2 - d|はd
y = 2 * 10**6
(0..2 * 10**6).each do |x|
  y -= 1 while y > 0 && x**2 + y**2 > d
  ans = [ans, (x**2 + y**2 - d).abs].min
  ans = [ans, (x**2 + (y + 1)**2 - d).abs].min
end
puts ans

# |x**2 + y**2 - D|の最小値を求める問題 (x**2 + y**2)はだいたい√Dと考える
# 2e6は成約の2*10**12を平方根したから
# 始めてx^2 + y^2 < d になったときの|x**2 + y**2 - d|を求める
# y+1の方も試しているのはx^2 + y^2 > dとなるyの最小値も考慮しなければならないから
