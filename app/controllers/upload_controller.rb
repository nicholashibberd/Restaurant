class UploadController < ApplicationController
  def index

   end
   
   def uploadfile
     post = Datafile.save(params[:upload])
     render :text => "File has been uploaded successfully"
   end
end
