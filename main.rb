require 'sinatra'
require 'mandrill'
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
puts sending

get '/' do
  @stylesheet = 'style/home.css'
  erb :home
  
end

get '/about' do
  @stylesheet = 'style/about.css'
 erb :about

end