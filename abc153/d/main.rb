#!/usr/bin/env ruby
# frozen_string_literal: true

def min_attacks(h)
  # モンスターの体力が 1 なら攻撃1回で倒せる
  return 1 if h == 1

  # モンスターの体力が X > 1 の場合、1回の攻撃で分裂して、
  # 2体のモンスター (体力 ⌊X / 2⌋) に分かれる
  # したがって必要な攻撃回数は 1（今回の攻撃）+ 2 * f(⌊X / 2⌋)
  1 + 2 * min_attacks(h / 2)
end

h = gets.to_i
puts min_attacks(h)
