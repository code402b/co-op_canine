require 'sinatra'
# require 'mandrill'
# ENV['MANDRILL_APIKEY']
# m = Mandrill::API.new
# message = {
#  :subject=> "Hello from the Mandrill API",
#  :from_name=> "Also, James",
#  :text=>"Hi message, how are you?",
#  :to=>[{:email=> "middlemissj.usa@gmail.com", :name=> "James"}],
#  :html=>"<html><h1>Hi <strong>message</strong>, how are you?</h1></html>",
#  :from_email=>"sender@yourdomain.com"
# }
# sending = m.messages.send message
# # puts sending

require './user_array.rb'

get '/' do
  @stylesheet = 'style/home.css'
  erb :home
end

get '/about' do
  @stylesheet = 'style/home.css'
 erb :home

end


get '/profile' do
  @stylesheet = 'style/profile.css'
  @zip = 10038
  erb :profile
end

get '/browse' do
  @stylesheet = 'style/browse.css'

  def users 
  # return value should be the array of ruby hashes
  # parse json file into ruby array

  file = File.open("users.json", "r")
  contents = file.read
  users = JSON.parse(contents)

  end

  @users = users

  erb :browse
end

get '/testimonial' do
  @stylesheet = 'style/testimonials.css'
  erb :testimonal  

end


