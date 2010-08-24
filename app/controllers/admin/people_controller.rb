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

end
