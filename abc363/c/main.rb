N, K = gets.split.map(&:to_i)
S = gets.chomp

tal = S.chars.tally
if tal.values.all?(1) # Sの文字がすべて一意であればN!を計算して終わり
  puts (1..N).inject(:*) # N!
  exit
end

def count_valid_strings(str, t)
  return 0 if str.length >= K && str[-K, K] == str[-K, K].reverse
  return 1 if str.length == N # 条件を満たしているのでカウント対象

  ans = 0
  t.each do |char, count|
    next unless count > 0

    t[char] -= 1
    ans += count_valid_strings(str + char, t)
    t[char] += 1
  end
  ans
end

puts count_valid_strings('', tal)

# 長さNの文字列Sの順列で部分文字列が回文(Palindrome)になっている組み合わせ以外のをカウントする問題
# 直接順列を求めるpermutationメソッドだと実行時間が間に合わないので順列を求める別の方法を使う
# tallyで文字と数値をとって、位置文字ずつ文字を足しながら部分文字列を判定する
# 回文とわかった時点でそれ以降の再帰を辞める(枝狩り)
# 再帰の際にtallyを渡すのでstr+charした文字のカウントを-1している。再帰から抜けたら下にもどす
# 再帰呼び出しから戻ったあとに文字のカウントを+1して戻す(バックトラック)
# イメージとしては分岐した場所毎にセーブして進んだ先でこれ以上進めなくなったら一つ手前に戻る感じ
