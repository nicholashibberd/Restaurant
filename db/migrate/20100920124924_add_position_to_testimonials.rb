class AddPositionToTestimonials < ActiveRecord::Migration
  def self.up
    add_column :testimonials, :position, :integer
  end

  def self.down
    remove_column :testimonials, :position
  end
end
