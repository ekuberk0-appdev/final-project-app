Rails.application.routes.draw do

get("/", { :controller => "application", :action => "index" })

  # Routes for the Service location resource:

  # CREATE
  #post("/insert_service_location", { :controller => "service_locations", :action => "create" })
          
  # READ
  get("/service_locations", { :controller => "service_locations", :action => "index" })
  
  get("/service_locations/:path_id", { :controller => "service_locations", :action => "show" })
  
  # UPDATE
  
  #post("/modify_service_location/:path_id", { :controller => "service_locations", :action => "update" })
  
  # DELETE
  #get("/delete_service_location/:path_id", { :controller => "service_locations", :action => "destroy" })

  #------------------------------

  # Routes for the Offering resource:

  # CREATE
  #post("/insert_offering", { :controller => "offerings", :action => "create" })
          
  # READ
  get("/offerings", { :controller => "offerings", :action => "index" })
  
  get("/offerings/:path_id", { :controller => "offerings", :action => "show" })
  
  # UPDATE
  
  #post("/modify_offering/:path_id", { :controller => "offerings", :action => "update" })
  
  # DELETE
  #get("/delete_offering/:path_id", { :controller => "offerings", :action => "destroy" })

  #------------------------------

  # Routes for the Review resource:

  # CREATE
  post("/insert_review", { :controller => "reviews", :action => "create" })
          
  # READ
  get("/reviews", { :controller => "reviews", :action => "index" })
  
  get("/reviews/:path_id", { :controller => "reviews", :action => "show" })
  
  # UPDATE
  
  post("/modify_review/:path_id", { :controller => "reviews", :action => "update" })
  
  # DELETE
  get("/delete_review/:path_id", { :controller => "reviews", :action => "destroy" })

  #------------------------------

  # Routes for the Neighborhood resource:

  # CREATE
  #post("/insert_neighborhood", { :controller => "neighborhoods", :action => "create" })
          
  # READ
  get("/neighborhoods", { :controller => "neighborhoods", :action => "index" })
  
  get("/neighborhoods/:path_id", { :controller => "neighborhoods", :action => "show" })
  
  # UPDATE
  
  #post("/modify_neighborhood/:path_id", { :controller => "neighborhoods", :action => "update" })
  
  # DELETE
  #get("/delete_neighborhood/:path_id", { :controller => "neighborhoods", :action => "destroy" })

  #------------------------------

  # Routes for the Favorite resource:

  # CREATE
  post("/insert_favorite", { :controller => "favorites", :action => "create" })
          
  # READ
  get("/favorites", { :controller => "favorites", :action => "index" })
  
  get("/favorites/:path_id", { :controller => "favorites", :action => "show" })
  
  # UPDATE
  
  post("/modify_favorite/:path_id", { :controller => "favorites", :action => "update" })
  
  # DELETE
  get("/delete_favorite/:path_id", { :controller => "favorites", :action => "destroy" })

  #------------------------------

  # Routes for the Service resource:

  # CREATE
  #post("/insert_service", { :controller => "services", :action => "create" })
          
  # READ
  get("/services", { :controller => "services", :action => "index" })
  
  get("/services/:path_id", { :controller => "services", :action => "show" })
  
  # UPDATE
  
  #post("/modify_service/:path_id", { :controller => "services", :action => "update" })
  
  # DELETE
  #get("/delete_service/:path_id", { :controller => "services", :action => "destroy" })

  #------------------------------

  # Routes for the Service provider resource:

  # CREATE
  #post("/insert_service_provider", { :controller => "service_providers", :action => "create" })
          
  # READ
  get("/service_providers", { :controller => "service_providers", :action => "index" })
  
  get("/service_providers/:path_id", { :controller => "service_providers", :action => "show" })
  
  # UPDATE
  
  #post("/modify_service_provider/:path_id", { :controller => "service_providers", :action => "update" })
  
  # DELETE
  #get("/delete_service_provider/:path_id", { :controller => "service_providers", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

end
