#encoding:shift_jis

# ２つの記述の意味は同じ

var = false

name = "Ruby"      # nameにデフォルト値を設定する 
if var != nil      # varがnilでなければ
  name = var       # nameにvarを代入する
end


name = var || "Ruby"


p name


# 配列の先頭要素を代入する場合

ary = [] 

item = nil         # itemに初期値を設定する
if ary             # aryがnilでなければ
  item = ary[0]    # ary[0]をitemに代入する
end

item = ary && ary[0]

p ary 
