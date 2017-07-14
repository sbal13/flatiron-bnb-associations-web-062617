class Listing < ActiveRecord::Base
	belongs_to :neighborhood
	belongs_to :host, :class_name => "User" 
	has_many :reservations
	has_many :reviews, through: :reservations, :source => :reviews
	has_many :guests, :class_name => "User", through: :reservations
end