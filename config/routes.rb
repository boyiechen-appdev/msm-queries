Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index" })

  get("/directors/youngest", { :controller => "directors", :action => "youngest" })
  get("/directors/eldest", { :controller => "directors", :action => "wisest" })
  # get("/directors/:young_elder", { :controller => "directors", :action => "young_elder" })

  get("/directors/:an_id", { :controller => "directors", :action => "young_elder" })

  get("/movies", { :controller => "application", :action => "movies" })

  get("/actors", { :controller => "application", :action => "actors" })
end
