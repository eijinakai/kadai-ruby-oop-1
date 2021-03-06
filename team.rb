# クラス定義
class Team

  # インスタンスが持つ変数（値）
  attr_accessor :self, :name, :win, :lose, :draw

  def initialize(name, win, lose, draw)
    self.name = name
    self.win = win
    self.lose = lose
    self.draw = draw
  end

  def calc_win_rate
    return self.win.to_f/(self.win.to_f + self.lose.to_f)
  end
  
  def show_team_result
    puts "#{self.name}の2020年の成績は#{self.win}勝#{self.lose}敗#{self.draw}分、勝率は #{(self.win.to_f/(self.win.to_f + self.lose.to_f))}です。"
  end
end

Giants = Team.new('Giants', 67, 45, 8)
Tigers = Team.new('Tigers', 60, 53, 7)
Dragons = Team.new('Dragons', 60, 55, 5)
BayStars = Team.new('BayStars', 56, 58, 6)
Carp = Team.new('Carp', 52, 56, 12)
Swallows = Team.new('Swallows', 41, 69, 10)

Giants.show_team_result
Tigers.show_team_result
Dragons.show_team_result
BayStars.show_team_result
Carp.show_team_result
Swallows.show_team_result