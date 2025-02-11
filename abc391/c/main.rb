#!/usr/bin/env ruby
# frozen_string_literal: true

n, q = gets.split.map(&:to_i)
# 鳩No: 巣Noが初期値のハッシュ。各巣に1羽ずつが初期位置
hole = (1..n).each_with_object({}) { |i, h| h[i] = i }
# 巣No: 1が初期値のハッシュ
cnt =  (1..n).each_with_object({}) { |i, h| h[i] = 1 }
# 2羽以上いる巣の数
ans = 0
# countメソッドで2羽以上の巣の数を出力するとTLEになる
# ので、巣の移動毎にansを更新する
add_cnt = lambda { |h, x|
  # - 変更前にcnt[h]が2以上だった場合、すでにそのキーの要素が重複してカウントされているので、更新前の状態をansから一度除外しておきます。
  ans -= 1 if cnt[h] >= 2
  cnt[h] += x
  # - 更新後にcnt[h]が2以上であれば、重複状態が成立しているので、ansを1増やして新しい状態をカウントに反映させます
  ans += 1 if cnt[h] >= 2
  # 元々2以上であればプラマイゼロで何も変化しない。
  # cnt[h]の更新前後のif文の結果が異なる場合、ansの値が増減する
}
q.times do
  type, p, h = gets.split.map(&:to_i)
  if type == 1
    # 鳩piを取り出す。移動元の巣から-1羽する
    add_cnt[hole[p], -1]
    # 鳩ナンバー: 巣ナンバーのハッシュを更新する
    hole[p] = h
    # 鳩piをいれる。更新後の巣の羽数を+1する
    add_cnt[hole[p], 1]
  else
    puts ans
  end
end
