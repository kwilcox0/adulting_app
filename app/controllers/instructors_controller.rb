class InstructorsController < ApplicationController
  def index
    @instructors = Instructor.all

    render("instructor_templates/index.html.erb")
  end

  def show
    @instructor = Instructor.find(params.fetch("id_to_display"))

    render("instructor_templates/show.html.erb")
  end

  def new_form
    @instructor = Instructor.new

    render("instructor_templates/new_form.html.erb")
  end

  def create_row
    @instructor = Instructor.new

    @instructor.name = params.fetch("name")
    @instructor.image_url = params.fetch("image_url")

    if @instructor.valid?
      @instructor.save

      redirect_back(:fallback_location => "/instructors", :notice => "Instructor created successfully.")
    else
      render("instructor_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @instructor = Instructor.find(params.fetch("prefill_with_id"))

    render("instructor_templates/edit_form.html.erb")
  end

  def update_row
    @instructor = Instructor.find(params.fetch("id_to_modify"))

    @instructor.name = params.fetch("name")
    @instructor.image_url = params.fetch("image_url")

    if @instructor.valid?
      @instructor.save

      redirect_to("/instructors/#{@instructor.id}", :notice => "Instructor updated successfully.")
    else
      render("instructor_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @instructor = Instructor.find(params.fetch("id_to_remove"))

    @instructor.destroy

    redirect_to("/instructors", :notice => "Instructor deleted successfully.")
  end
end
