class Like < ApplicationRecord
  belongs_to :post, counter_cache: :likes_count #リレーションされているlikeの数の値をリレーション先のlikes_countというカラムの値に入れる
  belongs_to :user

  validates :user_id, {presence: true}
  validates :post_id, {presence: true}
end
