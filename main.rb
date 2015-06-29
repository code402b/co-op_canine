require 'sinatra'
require 'mandrill'
require 'json'
 
ENV['MANDRILL_APIKEY']
m = Mandrill::API.new
message = {
 :subject=> "Hello from the Mandrill API",
 :from_name=> "Also, James",
 :text=>"Hi message, how are you?",
 :to=>[{:email=> "middlemissj.usa@gmail.com", :name=> "James"}],
 :html=>"<html><h1>Hi <strong>message</strong>, how are you?</h1></html>",
 :from_email=>"sender@yourdomain.com"
}
sending = m.messages.send message

# creates method to parse users.json into a ruby hash
def users 
  file = File.open("users.json", "r")
  contents = file.read
  users = JSON.parse(contents)
end


get '/' do
  @stylesheet = 'style/home.css'
  erb :home
end

get '/about' do
  @stylesheet = 'style/home.css'
  erb :home
end

get '/testimonial' do
  @stylesheet = 'style/testimonials.css'
  erb :testimonal  
end


get '/profile' do
  @stylesheet = 'style/profile.css'
  @users = users
  erb :profile
end


get '/browse' do
  @stylesheet = 'style/browse.css'
  @users = users
  erb :browse
end

get '/browse_popup' do
  @stylesheet = 'style/profile_popup.css'
  @users = users
  erb :browse_popup
end




