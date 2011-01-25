class PeopleController < ApplicationController
  def index
    @people = @site.people.all
		@photo_size = 'template' + @site.people_template.to_s + '_index'    
		render_site_view
  end

  def show
    @person = @site.people.find(params[:id])
    @people = @site.people.all
		@photo_size = 'template' + @site.people_template.to_s + '_show'
		render_site_view		
  end

  def create
     @person = @site.people.new(params[:person])
       if @person.save
        redirect_to :controller => 'admin/people', :action => 'index'
       else
        render 'admin/people/new'
       end
   end

   def update
     @person = @site.people.find(params[:id])
     if @person.update_attributes(params[:person])
       redirect_to :controller => 'admin/people', :action => 'index'
     else
       render 'admin/people/new'
     end
   end
   
   def destroy
     person = @site.people.find(params[:id]).destroy
     redirect_to :controller => 'admin/people', :action => 'index'
   end

end
