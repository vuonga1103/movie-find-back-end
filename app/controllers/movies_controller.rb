class MoviesController < ApplicationController
  def show
    movie_found = Movie.find_by(movie_id: params[:id].to_i)

    if movie_found
      render json: movie_found, status: :ok
    else
      render json: { error: 'No movie exists with that ID' }
    end
  end

  def remove_dislike
    movie_found = Movie.find_by(movie_id: params[:id].to_i)

    if movie_found
      if movie_found.dislikes > 0
        movie_found.dislikes -= 1 
        movie_found.save
      end
      
      render json: movie_found, status: :ok
    else
      render json: { error: 'No movie exists with that ID' }
    end
  end

  def add_dislike
    movie_found = Movie.find_or_create_by(movie_id: params[:id].to_i)

    if movie_found
      movie_found.dislikes += 1 
      movie_found.save
      render json: movie_found, status: :ok
    else
      render json: { error: 'No movie exists with that ID' }
    end
  end

  def remove_like
    movie_found = Movie.find_by(movie_id: params[:id].to_i)

    if movie_found
      if movie_found.likes > 0
        movie_found.likes -= 1 
        movie_found.save
      end
      
      render json: movie_found, status: :ok
    else
      render json: { error: 'No movie exists with that ID' }
    end
  end

  def add_like
    movie_found = Movie.find_or_create_by(movie_id: params[:id].to_i)

    if movie_found
      movie_found.likes += 1
      movie_found.save
      render json: movie_found, status: :ok
    else
      render json: { error: 'No movie exists with that ID' }
    end
  end
end
