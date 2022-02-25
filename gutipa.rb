puts "じゃんけん..."

def janken_result
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"

  hand = ["グー","チョキ","パー"]
  
  my_hand = gets.chomp.to_i

  result = 0

  if my_hand == 3
    puts "降参"
    result = 3
    return result
  end

  puts "ホイ!!"
  puts "---------------------------"
  
  puts "あなた:#{hand[my_hand]}を出しました"
  
  your_hand = hand.sample
  puts "相  手:#{your_hand}を出しました"
  
  puts "---------------------------"

  if hand[my_hand] == your_hand
    puts "あいこで、、、"
    result = 0
    return result
  elsif (hand[my_hand] == "グー" && your_hand == "チョキ")||(hand[my_hand] == "チョキ" && your_hand == "パー")||(hand[my_hand] == "パー" && your_hand == "グー")
    puts "相手の向く方向を選べ!!"
    result = 1
    return result
  else
    puts "相手の指を見てはいけない"
    result = 2
    return result
  end
end

def attimuitehoi
  result = janken_result()
  if result == 0
    return true
  elsif result == 3
    return false
  end

  puts "あっち向いて〜〜"
  puts "0(上)1(下)2(左)3(右)"

  direction = ["上", "下", "左", "右"]
  
  my_direction = gets.chomp.to_i
  puts "ホイ!!"
  puts "---------------------------"

  puts "あなた:#{direction[my_direction]}"

  your_direction = direction.sample
  puts "相  手:#{your_direction}"

  puts "---------------------------"

  if direction[my_direction] == your_direction
    if result == 1
      puts "あなたの勝ち"
    else
      puts "あなたの負け"
    end
  else
    puts "もう一度じゃんけんから!"
    puts "じゃんけん..."
    return true
  end
end

def loop
  while attimuitehoi
  end
end

loop