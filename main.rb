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