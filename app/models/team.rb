class Team < ActiveRecord::Base

  has_many :wins, class_name: 'Game', foreign_key: :winner_id
  has_many :losses, class_name: 'Game', foreign_key: :loser_id
  validates_presence_of :name

  def win_count
    wins.count
  end

  def loss_count
   losses.count
  end

end
