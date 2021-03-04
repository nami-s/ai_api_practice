class List < ApplicationRecord
  has_many :tags, dependent: :destroy
  attachment :image

  def sentiment
    score = self.score
    magnitude = self.magnitude
    if score == 0.0
      return '平常心'
    elsif score > 0.1 && magnitude < 5
      return 'ややポジ'
    elsif score > 0.1 && magnitude > 5
      return 'すごポジ'
    elsif score < -0.1 && magnitude < 5
      return 'ややネガ'
    elsif score < -0.1 && magnitude > 5
      return 'すごネガ'
    end
  end
end
