require 'sinatra'
require 'sinatra/reloader' if development?

set :public_folder => 'public'

get '/' do
  erb :home
end

get '/about' do
  @title = 'All About This Website'
  erb :about
end

get '/contact' do
  @title = 'Contact Us'
  erb :contact
end

not_found do
  erb :not_found
end
