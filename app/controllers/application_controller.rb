class ApplicationController < ActionController::Base
  def homepage
    render({ :template => "misc_templates/home"})
  end

  # def directors
  #   render({ :template => "misc_templates/directors"})
  # end

  # def directors_youngest
  #   render({ :template => "misc_templates/directors_youngest"})
  # end

  # def directors_eldest
  #   render({ :template => "misc_templates/directors_eldest"})
  # end

  def movies
    render({ :template => "misc_templates/movies"})
  end
  
  def actors
    render({ :template => "misc_templates/actors"})
  end
end
