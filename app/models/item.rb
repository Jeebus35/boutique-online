class Item < ApplicationRecord
	has_one_attached :catpic
	validates :title, presence: true
	validates :description, presence: true
	validates :price, presence: true
	validates :image, presence: true

	has_many :cart_items, dependent: :nullify
	has_many :item_orders, dependent: :destroy
	has_many :carts, through: :cart_items
	has_many :orders, through: :item_orders
	has_one_attached :picture
end
