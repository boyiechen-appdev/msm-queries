Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  # directors
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/youngest", { :controller => "directors", :action => "youngest" })
  get("/directors/eldest", { :controller => "directors", :action => "wisest" })
  # get("/directors/:young_elder", { :controller => "directors", :action => "young_elder" })
  get("/directors/:an_id", { :controller => "directors", :action => "director_details" })

  # movies
  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:an_id", { :controller => "movies", :action => "movie_details" })

  get("/actors", { :controller => "application", :action => "actors" })
end
