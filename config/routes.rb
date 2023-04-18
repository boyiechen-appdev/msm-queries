Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "application", :action => "directors" })

  get("/directors/youngest", { :controller => "application", :action => "directors_youngest" })
  get("/directors/eldest", { :controller => "application", :action => "directors_eldest" })

  get("/movies", { :controller => "application", :action => "movies" })

  get("/actors", { :controller => "application", :action => "actors" })
end
