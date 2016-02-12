class Game < ActiveRecord::Base
  belongs_to :winner, class_name: 'Team', foreign_key: :winner_id
  belongs_to :loser, class_name: 'Team', foreign_key: :loser_id
  belongs_to :map
  validates_presence_of :winner, :loser, :map, :winner_score, :loser_score, :date
  validate :check_winner_and_loser

  def check_winner_and_loser
    errors.add(:winner, "can't be the same as Loser.") if winner == loser
  end
end
