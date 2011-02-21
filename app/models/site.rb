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
    item = Link.new('Home', "/")
    links << item
    if !self.menus.empty?
      item = Link.new('Menus', '/menus')
    end
    links << item
    self.menus.each do |item|
      link_item = Link.new("Menus: #{item.name}", "/menus/#{item.id}")
      links << link_item
    end
    self.pages.each do |item|
      link_item = Link.new(item.name, "/pages/#{item.id}")
      links << link_item
    end
    if !self.offers.empty?
      item = Link.new('Offers', '/offers')
      links << item
    end
    self.offers.each do |item|
      link_item = Link.new("Offers: #{item.title}", "/offers/#{item.id}")
      links << link_item
    end
    if !self.galleries.empty?
      item = Link.new('Galleries', '/galleries')
      links << item
    end
    self.galleries.each do |item|
      link_item = Link.new("Galleries: #{item.name}", "/galleries/#{item.id}")
      links << link_item
    end
    if !self.people.empty?
      item = Link.new('People', '/people')
      links << item
    end
    self.people.each do |item|
      link_item = Link.new("People: #{item.name}", "/people/#{item.id}")
      links << link_item
    end
    item = Link.new('Location', '/location')
    links << item
    item = Link.new('Reservations', '/reservations/new')
    links << item
    item = Link.new('Contact', '/contact')
    links << item
    if !self.testimonials.empty?
      item = Link.new('Testimonials', '/testimonials')
      links << item
    end
    return links
  end
end
