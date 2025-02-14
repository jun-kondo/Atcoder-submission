#!/usr/bin/env ruby
# frozen_string_literal: true

# https://atcoder.jp/contests/abc358/tasks/abc358_c
n, m = gets.split.map(&:to_i)
s = Array.new(n) { gets.chomp }
ans = n
# 全ての売り場に対して行ったor行かなかったの組み合わせ(部分集合)を全探索する
(0...1 << n).each do |x|
  # 売り場の組み合わせ（部分集合）で**すべての味がカバーできるかどうか**の状態
  ok = true
  # フレーバー毎に各売り場をチェックする
  (0...m).each do |i|
    # **特定の味について**、
    # 現在選択している売り場の中にその味を扱っているものがあるかどうか
    can = false
    (0...n).each do |j|
      # その売場を訪れた、かつ売り場にフレーバーがあったかどうか判定
      can = true if x >> j & 1 == 1 && (s[j][i] == 'o')
    end
    ok = false unless can
  end
  # 立っているビットの本数を数えている
  # この場合ビット=店を訪れたということ。より少ないビット本数の結果を求める
  ans = [ans, x.to_s(2).count('1')].min if ok
end
puts ans
