Rails.application.routes.draw do
  # Routes for the Rating resource:

  # CREATE
  get("/ratings/new", { :controller => "ratings", :action => "new_form" })
  post("/create_rating", { :controller => "ratings", :action => "create_row" })

  # READ
  get("/ratings", { :controller => "ratings", :action => "index" })
  get("/ratings/:id_to_display", { :controller => "ratings", :action => "show" })

  # UPDATE
  get("/ratings/:prefill_with_id/edit", { :controller => "ratings", :action => "edit_form" })
  post("/update_rating/:id_to_modify", { :controller => "ratings", :action => "update_row" })

  # DELETE
  get("/delete_rating/:id_to_remove", { :controller => "ratings", :action => "destroy_row" })

  #------------------------------

  # Routes for the Instructor resource:

  # CREATE
  get("/instructors/new", { :controller => "instructors", :action => "new_form" })
  post("/create_instructor", { :controller => "instructors", :action => "create_row" })

  # READ
  get("/instructors", { :controller => "instructors", :action => "index" })
  get("/instructors/:id_to_display", { :controller => "instructors", :action => "show" })

  # UPDATE
  get("/instructors/:prefill_with_id/edit", { :controller => "instructors", :action => "edit_form" })
  post("/update_instructor/:id_to_modify", { :controller => "instructors", :action => "update_row" })

  # DELETE
  get("/delete_instructor/:id_to_remove", { :controller => "instructors", :action => "destroy_row" })

  #------------------------------

  # Routes for the Topic resource:

  # CREATE
  get("/topics/new", { :controller => "topics", :action => "new_form" })
  post("/create_topic", { :controller => "topics", :action => "create_row" })

  # READ
  get("/topics", { :controller => "topics", :action => "index" })
  get("/topics/:id_to_display", { :controller => "topics", :action => "show" })

  # UPDATE
  get("/topics/:prefill_with_id/edit", { :controller => "topics", :action => "edit_form" })
  post("/update_topic/:id_to_modify", { :controller => "topics", :action => "update_row" })

  # DELETE
  get("/delete_topic/:id_to_remove", { :controller => "topics", :action => "destroy_row" })

  #------------------------------

  # Routes for the Video resource:

  # CREATE
  get("/videos/new", { :controller => "videos", :action => "new_form" })
  post("/create_video", { :controller => "videos", :action => "create_row" })

  # READ
  get("/videos", { :controller => "videos", :action => "index" })
  get("/videos/:id_to_display", { :controller => "videos", :action => "show" })

  # UPDATE
  get("/videos/:prefill_with_id/edit", { :controller => "videos", :action => "edit_form" })
  post("/update_video/:id_to_modify", { :controller => "videos", :action => "update_row" })

  # DELETE
  get("/delete_video/:id_to_remove", { :controller => "videos", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
