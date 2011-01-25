class Admin::PeopleController < AdminController
    uses_yui_editor
  def index
    @people = @site.people.all
  end

  def new
    @person = @site.people.new
  end

  def edit
    @person = @site.people.find(params[:id])
  end
  
  def order_people
    people = @site.people.all
    people.each do |person|
      person.position = params['person'].index(person.id.to_s) + 1
      person.save
    end
    render :nothing => true
  end
  

end
