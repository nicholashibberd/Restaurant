class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
    @people = Person.all
  end

  def create
     @person = Person.new(params[:person])
       if @person.save
        redirect_to :controller => 'admin/people', :action => 'index'
       else
        render 'admin/people/new'
       end
   end

   def update
     @person = Person.find(params[:id])
     if @person.update_attributes(params[:person])
       redirect_to :controller => 'admin/people', :action => 'index'
     else
       render 'admin/people/new'
     end
   end
   
   def destroy
     person = Person.find(params[:id]).destroy
     redirect_to :controller => 'admin/people', :action => 'index'
   end

end
