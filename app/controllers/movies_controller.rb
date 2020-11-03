class MoviesController < ApplicationController
    def index
      if params[:search].present?
        @movies = Movie.search_by_title_and_syllabus("%#{params[:search][:query]}%")
      else
        @movies = Movie.all
      end
    end
  end
  