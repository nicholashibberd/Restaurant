class AddSiteIdToTestimonials < ActiveRecord::Migration
  def self.up
    add_column :testimonials, :site_id, :integer
  end

  def self.down
    remove_column :testimonials, :site_id
  end
end
