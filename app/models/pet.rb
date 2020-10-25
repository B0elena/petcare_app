class Pet < ApplicationRecord
  belongs_to :user
  has_many :managements
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :sex
end
