Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index" })

  # get("/directors/youngest", { :controller => "directors", :action => "directors_youngest" })
  # get("/directors/eldest", { :controller => "directors", :action => "wisest" })
  get("/directors/:young_elder", { :controller => "directors", :action => "young_elder" })

  get("/movies", { :controller => "application", :action => "movies" })

  get("/actors", { :controller => "application", :action => "actors" })
end
