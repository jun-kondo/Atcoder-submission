#!/usr/bin/env ruby
# frozen_string_literal: true

m = gets.to_i
s = Array.new(3) { gets.chomp.chars }

INF = 10**18
ans = INF

(0...m).each do |t1|
  (0...m * 2).each do |t2|
    (0...m * 3).each do |t3|
      next if t1 == t2
      next if t1 == t3
      next if t2 == t3
      next if s[0][t1 % m] != s[1][t2 % m]
      next if s[0][t1 % m] != s[2][t3 % m]

      ans = [ans, [t1, t2, t3].max].min
    end
  end
end
puts ans == INF ? -1 : ans

# スロットを揃える問題。全探索する。
# mの最大値が100なので、3つのスロットを止めるには三倍の300かかる
# 同じ列に揃えられる数字があった場合、どうじには揃えられないので次の周期で揃える必要がある
# 上記から3重の300回のループを作って全探索するのだが、実行速度が遅いので
# t1>t2>t3の順にループ上限を増やして上記のケースに対処する
# ループ内のnextについて
# スロットは同時には止められないので、ブロック変数(時間)が重複した場合はありえないシチュエーションなのでスキップする
# もうひとつは止めたスロットの番号が揃っているか確認している
# maxで最後に押した時間を算出
# minで最短でスロットを揃えた時間を算出している
