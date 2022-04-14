class Maison < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_name_and_surface,
    against: [ :name, :surface ],
    using: {
      tsearch: { prefix: true }
    }
end
