Rxngif::Application.routes.draw do

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
