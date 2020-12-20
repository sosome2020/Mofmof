class Property < ApplicationRecord
  validates :property_name,  presence: true
  validates :rent,  numericality: true
  validates :address,  presence: true
  validates :age,  numericality: true
  has_many :stations, dependent: :destroy
 accepts_nested_attributes_for :stations, allow_destroy: true, reject_if: :all_blank
end
