Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/eldest", { :controller => "directors", :action => "wisest" })
  get("/directors/youngest", { :controller => "directors", :action => "youngest" })
  get("/movies", { :controller => "movies", :action => "movieindex" })
  get("/actors", { :controller => "actor", :action => "index" })
  # STATIC ROUTES NEED TO BE ABOVE DYNAMIC
  get("/directors/:an_id", { :controller => "directors", :action => "director_details" })
  get("/movies/:an_id", { :controller => "movies", :action => "movie_details" })
  get("/actors/:an_id", { :controller => "actor", :action => "actor_details" })
end
