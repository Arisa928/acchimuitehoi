class Game
  
  def janken
    
  puts "じゃんけん..."
  puts "0(グー)1(チョキ)2(パー)"
  
  @janken_result = ""  
  your_hand = gets.to_i  # ユーザーの入力値を取得
  np_hand = rand(0..2).to_i #ランダムな値を作成
    
  jankens = ["グー", "チョキ","パー"] 
    
  # 値によって処理を分岐
    
  puts "ポン！"
  puts "あなたは#{jankens[your_hand]}を出しました、相手は#{jankens[np_hand]}を出しました"
    
    if your_hand == np_hand
    puts "あいこです"
    janken
    return true
      
    elsif(your_hand == 0 && np_hand == 1)||(your_hand == 1 && np_hand == 2)||(your_hand == 2 && np_hand == 0)
    puts "あなたの勝ちです"
    @janken_result = "win"
    acchimuitehoi
    return false
    
    else
    puts "あなたの負けです"
    @janken_result = "lose"
    acchimuitehoi
    return false
    end 
    
  end #じゃんけんメソッドの終わり
  
  
  
  #ここからあっち向いてホイ
  
  def acchimuitehoi 
  puts "あっち向いて..."
  puts "ホイ！"
  
  puts "0(上)1(右)2(下)３(左)"
  
  your_direction = gets.to_i  # ユーザーの入力値を取得
  np_direction = rand(0..3).to_i #ランダムな値を作成
  
  directions = ["上","右","下","左"]
  
  # 値によって処理を分岐
  
  puts "あなた：#{directions[your_direction]} 相手：#{directions[np_direction]}"
  
    if @janken_result == "win" && your_direction == np_direction
      puts "あなたの勝ちです"
      exit
      return false
      
    elsif @janken_result == "lose" && your_direction == np_direction
      puts "あなたの負けです"
      exit
      return false
      
    else
      puts "引き分けです。"
      janken
      return true 
    end
    
  end  #あっち向いてホイメソッドの終わり
  
end
#ゲームクラス終わり

game = Game.new()
game.janken
game.acchimuitehoi

next_game = true
   
  while next_game do
  next_game = game
  end 