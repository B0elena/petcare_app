class Pet < ApplicationRecord
  belongs_to :user
  has_many :managements
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :sex
  validates :petname, :sex_id, :kind, :birthday, :image, presence: true
  validates :sex_id, numericality: { other_than: 1 } 
end
