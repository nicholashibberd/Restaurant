class Site < ActiveRecord::Base
  has_many :menus
  has_many :galleries
  has_many :offers
  has_many :opening_times
  has_many :pages
  has_many :people
  has_many :reservations
  has_many :testimonials
  has_many :users 
  has_many :orders
  has_many :customers
  has_many :navigation_menus
  accepts_nested_attributes_for :opening_times
  
  def links
    links = []
    links << Link.new('Home', "/")
    links << Link.new('Location', '/location')
    links << Link.new('Reservations', '/reservations/new')
    links << Link.new('Contact', '/contact')
    if !self.menus.empty?
      links << Link.new('Menus', '/menus')
    end
    self.menus.each do |item|
      links << Link.new("Menus: #{item.name}", "/menus/#{item.id}")
    end
    self.pages.each do |item|
      links << Link.new(item.name, "/pages/#{item.id}")
    end
    if !self.offers.empty?
      links << Link.new('Offers', '/offers')
    end
    self.offers.each do |item|
      links << Link.new("Offers: #{item.title}", "/offers/#{item.id}")
    end
    if !self.galleries.empty?
      links << Link.new('Galleries', '/galleries')
    end
    self.galleries.each do |item|
      links << Link.new("Galleries: #{item.name}", "/galleries/#{item.id}")
    end
    if !self.people.empty?
      links << Link.new('People', '/people')
    end
    self.people.each do |item|
      links << Link.new("People: #{item.name}", "/people/#{item.id}")
    end
    if !self.testimonials.empty?
      links << Link.new('Testimonials', '/testimonials')
    end
    return links
  end
end
