class Site < ActiveRecord::Base
  has_one :info
  has_many :menus
  has_many :galleries
  has_many :offers
  has_many :opening_times
  has_many :pages
  has_many :people
  has_many :reservations
  has_many :testimonials
  has_many :users 
  has_many :wines
  has_many :orders
  has_many :customers
  accepts_nested_attributes_for :opening_times
end
