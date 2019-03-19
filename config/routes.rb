Rails.application.routes.draw do
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
