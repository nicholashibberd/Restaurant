class Admin::PeopleController < AdminController
    uses_yui_editor
  def index
    @people = Person.all
  end

  def new
    @person = Person.new
  end

  def edit
    @person = Person.find(params[:id])
  end
  
  def order_people
    people = Person.all
    people.each do |person|
      person.position = params['person'].index(person.id.to_s) + 1
      person.save
    end
    render :nothing => true
  end
  

end
