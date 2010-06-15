class Datafile < ActiveRecord::Base
  def self.save(upload)
      name =  upload['datafile']
      directory = "public/images"
      # create the file path
      path = File.join(directory, name)
      # write the file
      File.open(path, "wb") { |f| f.write(upload['datafile']) }
    end
end
