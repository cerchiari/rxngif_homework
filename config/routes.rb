Rxngif::Application.routes.draw do

  # Routes for the Photo resource:
  # CREATE
  get '/photos/new', controller: 'photos', action: 'new', as: 'new_photo'
  post '/photos', controller: 'photos', action: 'create', as: 'photos'

  # READ
  get '/photos', controller: 'photos', action: 'index'
  get '/photos/:id', controller: 'photos', action: 'show', as: 'photo'

  # UPDATE
  get '/photos/:id/edit', controller: 'photos', action: 'edit', as: 'edit_photo'
  patch '/photos/:id', controller: 'photos', action: 'update'

  # DELETE
  delete '/photos/:id', controller: 'photos', action: 'destroy'
  #------------------------------

  # CREATE
get '/pictures/new', :controller => 'pictures', :action => 'new', :as => 'new_picture'
post '/pictures', :controller => 'pictures', :action => 'create', :as => 'pictures'

# READ
get '/pictures', :controller => 'pictures', :action => 'index'
get '/pictures/:id', :controller => 'pictures', :action => 'show', :as => 'picture'

# UPDATE
get '/pictures/:id/edit', :controller => 'pictures', :action => 'edit', :as => 'edit_picture'
patch '/pictures/:id', :controller => 'pictures', :action => 'update'

# DELETE
delete '/pictures/:id', :controller => 'pictures', :action => 'destroy'

#  get("/picture_details/:id", { :controller => "pictures", :action => "show" })
#  get("/all_pictures", { :controller => "pictures", :action => "index" })
#  get("/new_picture_form", { :controller => "pictures", :action => "new" })
#  patch("/create_picture", { :controller => "pictures", :action => "create" })
#  get("/delete_picture/:id", { :controller => "pictures", :action => "destroy" })
#  get("/edit_picture_form/:id", { :controller => "pictures", :action => "edit" })
#  patch("/update_picture/:id", { :controller => "pictures", :action => "update" })
end
