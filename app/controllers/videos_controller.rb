class VideosController < ApplicationController
  def index
    @q = Video.ransack(params[:q])
    @videos = @q.result(:distinct => true).includes(:ratings, :category, :instructor, :users).page(params[:page]).per(10)

    render("video_templates/index.html.erb")
  end

  def show
    @rating = Rating.new
    @video = Video.find(params.fetch("id_to_display"))

    render("video_templates/show.html.erb")
  end

  def new_form
    @video = Video.new

    render("video_templates/new_form.html.erb")
  end

  def create_row
    @video = Video.new

    @video.title = params.fetch("title")
    @video.description = params.fetch("description")
    @video.length = params.fetch("length")
    @video.difficulty = params.fetch("difficulty")
    @video.points = params.fetch("points")
    @video.instructor_id = params.fetch("instructor_id")
    @video.topic_id = params.fetch("topic_id")

    if @video.valid?
      @video.save

      redirect_back(:fallback_location => "/videos", :notice => "Video created successfully.")
    else
      render("video_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_topic
    @video = Video.new

    @video.title = params.fetch("title")
    @video.description = params.fetch("description")
    @video.length = params.fetch("length")
    @video.difficulty = params.fetch("difficulty")
    @video.points = params.fetch("points")
    @video.instructor_id = params.fetch("instructor_id")
    @video.topic_id = params.fetch("topic_id")

    if @video.valid?
      @video.save

      redirect_to("/topics/#{@video.topic_id}", notice: "Video created successfully.")
    else
      render("video_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_instructor
    @video = Video.new

    @video.title = params.fetch("title")
    @video.description = params.fetch("description")
    @video.length = params.fetch("length")
    @video.difficulty = params.fetch("difficulty")
    @video.points = params.fetch("points")
    @video.instructor_id = params.fetch("instructor_id")
    @video.topic_id = params.fetch("topic_id")

    if @video.valid?
      @video.save

      redirect_to("/instructors/#{@video.instructor_id}", notice: "Video created successfully.")
    else
      render("video_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @video = Video.find(params.fetch("prefill_with_id"))

    render("video_templates/edit_form.html.erb")
  end

  def update_row
    @video = Video.find(params.fetch("id_to_modify"))

    @video.title = params.fetch("title")
    @video.description = params.fetch("description")
    @video.length = params.fetch("length")
    @video.difficulty = params.fetch("difficulty")
    @video.points = params.fetch("points")
    @video.instructor_id = params.fetch("instructor_id")
    @video.topic_id = params.fetch("topic_id")

    if @video.valid?
      @video.save

      redirect_to("/videos/#{@video.id}", :notice => "Video updated successfully.")
    else
      render("video_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_category
    @video = Video.find(params.fetch("id_to_remove"))

    @video.destroy

    redirect_to("/topics/#{@video.topic_id}", notice: "Video deleted successfully.")
  end

  def destroy_row_from_instructor
    @video = Video.find(params.fetch("id_to_remove"))

    @video.destroy

    redirect_to("/instructors/#{@video.instructor_id}", notice: "Video deleted successfully.")
  end

  def destroy_row
    @video = Video.find(params.fetch("id_to_remove"))

    @video.destroy

    redirect_to("/videos", :notice => "Video deleted successfully.")
  end
end
