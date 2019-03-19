class TopicsController < ApplicationController
  def index
    @topics = Topic.all

    render("topic_templates/index.html.erb")
  end

  def show
    @video = Video.new
    @topic = Topic.find(params.fetch("id_to_display"))

    render("topic_templates/show.html.erb")
  end

  def new_form
    @topic = Topic.new

    render("topic_templates/new_form.html.erb")
  end

  def create_row
    @topic = Topic.new

    @topic.topic = params.fetch("topic")

    if @topic.valid?
      @topic.save

      redirect_back(:fallback_location => "/topics", :notice => "Topic created successfully.")
    else
      render("topic_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @topic = Topic.find(params.fetch("prefill_with_id"))

    render("topic_templates/edit_form.html.erb")
  end

  def update_row
    @topic = Topic.find(params.fetch("id_to_modify"))

    @topic.topic = params.fetch("topic")

    if @topic.valid?
      @topic.save

      redirect_to("/topics/#{@topic.id}", :notice => "Topic updated successfully.")
    else
      render("topic_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @topic = Topic.find(params.fetch("id_to_remove"))

    @topic.destroy

    redirect_to("/topics", :notice => "Topic deleted successfully.")
  end
end
