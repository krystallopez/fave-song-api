class SongsController < ApplicationController

def index
  songs = Song.all
  render json: songs.as_json
end

def show
  song_id = params["id"]
  songs = Song.find_by(id: song_id)
  render json: songs.as_json
end

def create 
  songs = Song.new(
    
    title: params[:title],
    album: params[:album],
    artist: params[:artist],
    year: params[:year]

  )
  song.save
  render json: songs.as_json
end 

def update
  song_id = params["id"]
  songs = Song.find_by(:id song_id)

  songs.title = params["title"] || songs.title
  songs.album = params["album"] || songs.album
  songs.artist = params["artist"] || songs.artist
  songs.year = params["year"] || songs.year 

  songs.save
  render json: songs.as_json
end

def destroy 
  song_id = params["id"]
  songs = Song.find_by(:id song_id)
  song.destroy
  render json: {message: "This song has been deleted successfully."}
end 




end





end 