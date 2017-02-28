require 'sinatra'

get '/' do
  "Hello!"
end

get '/secret' do
  "I need sugar to live."
end

get '/secret/bug' do
  "There's a spider on your face, Chris. Look! Hello? "
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  @age = [24, 30, 95].sample
  erb(:index)
end

get '/cat-form' do
  erb(:catform)
end

post '/named-cat' do
  p params
  @name = params[:name]
  @age = params[:age]
  erb(:index)
end

get '/space-invaders' do
  erb(:game)
end
