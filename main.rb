require 'sinatra'
require 'sinatra/reloader'
require 'pg'

require './db_config'
require './models/photo'
require './models/user'


get '/' do
  @user_photos = Photo.all
  shuffled = Photo.all.shuffle
  @shuffledphotos_6 = shuffled.slice(0..5)
  @shuffledphotos_4 = shuffled.slice(6..9)
  @shuffledphotos_3 = shuffled.slice(10..12)
  @shuffledphotos_2 = shuffled.slice(14..15)
  @shuffledphotos_6_2 = shuffled.slice(16..21)
  @shuffledphotos_4_2 = shuffled.slice(22..25)
  @shuffledphotos_3_2 = shuffled.slice(26..28)
  @shuffledphotos_2_2 = shuffled.slice(29..30)
  #@shuffledphotos_1 = shuffled.slice(18..19)

  erb :index
end


enable :sessions

helpers do

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

end


get'/photos/new' do 
  shuffled = Photo.all.shuffle
  @shuffledphotos_1 = shuffled.slice(0..0)
  erb :new
end

post '/photos' do 
  photo=Photo.new
  photo.name = params[:name]
  photo.image_url = params[:image_url]
  photo.description = params[:description]
  photo.user_id = current_user.id
  photo.save
  redirect to '/profile'
  end

get '/login' do 
  erb :login
end 



#creates new users 

get'/users/new' do 
  erb :newuser
end

post '/users' do 
  users=User.new
  users.name = params[:name]
  users.email = params[:email]
  users.password = params[:password]
  users.user_img = params[:user_img]
  users.save
  redirect to '/login'
  end

get '/login' do 
  erb :login
end 

get '/index2' do 
  @user_photos = Photo.all
  shuffled = Photo.all.shuffle
  @shuffledphotos_6 = shuffled.slice(0..5)
  @shuffledphotos_4 = shuffled.slice(6..9)
  @shuffledphotos_3 = shuffled.slice(10..12)
  @shuffledphotos_2 = shuffled.slice(14..15)
  #@shuffledphotos_1 = shuffled.slice(18..19)
  erb :index2
end 

#gets the photo by id 
get '/photos/:id' do
  @photo = Photo.find(params[:id])

  erb :show_photo
end



get '/profile' do
  @user = User.find(current_user)
  @user_photos = Photo.where(user_id: current_user.id)

  erb :profile

end


post '/session' do
  user = User.find_by(email: params[:email]) #change this for username / input
  if user && user.authenticate(params[:password])
    # we're in! create a new session
    session[:user_id] = user.id
    # redirect
    redirect to '/profile'
  else
    # stay at the login form
    erb :login
  end
end

delete '/session' do
  session[:user_id] = nil
  redirect to '/'
end

# request

# response















