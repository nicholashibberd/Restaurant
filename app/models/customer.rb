class Customer < ActiveRecord::Base
  belongs_to :site
  has_many :orders
  accepts_nested_attributes_for :orders
  
  attr_accessor :password
  attr_accessible :name, :email, :phone, :password, :password_confirmation, :address1, :address2, :city, :postcode, :orders_attributes
  
  EmailRegex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  PostcodeRegex = /SW\d/i
  
  validates_presence_of :name
  validates_length_of	:name, :maximum => 50
  validates_format_of	:email, :with => EmailRegex
  validates_format_of	:postcode, :with => PostcodeRegex, :on => :update
  validates_uniqueness_of :email, :case_sensitive => false, :on => :create
  validates_confirmation_of :password
  
  validates_presence_of :password, :on => :create
  validates_length_of	:password, :within => 6..40, :on => :create
  
  before_save :encrypt_password
  
  def has_password?(submitted_password)
    encrypted_password == encrypt(submitted_password)
  end
  
  def self.authenticate(email, submitted_password)
    customer = find_by_email(email)
     return nil if customer.nil?
     return customer if customer.has_password?(submitted_password)
  end
  
  def remember_me!
    self.remember_token = encrypt("#{salt}--#{id}")
    save_without_validation
  end
  
  def is_administrator?
    self.status == 'administrator'
  end
  
  def self.exists?(id)
     customer = find_by_id(id)
     return nil if customer.nil?
     return customer if !customer.nil?
  end
  
  def has_address?
    !self.address1.nil?
  end
  
  
  private
  
  def encrypt_password 
    unless password.nil?
      self.salt = make_salt
      self.encrypted_password = encrypt(password)
    end
  end
  
  def encrypt(string) 
    secure_hash("#{salt}#{string}")
  end
  
  def make_salt
    secure_hash("#{Time.now.utc}#{password}")
  end
  
  def secure_hash(string)
    Digest::SHA2.hexdigest(string)
  end
  
end
