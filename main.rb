require 'sinatra'

require 'mandrill'



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
  @zip = 10011
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


get '/contact' do
  @stylesheet = "style/contact.css"
  erb :contact
end

post '/contact' do
  puts params.inspect
  @username = params['username']
  @email_addr = params['email_addr']
  @usr_msg = params["usr_msg"]
  @confirmation = "<p>Hi!, #{@username} You have requested information about a Co-Owning a Dog on Co-Op Canines</p>"
  @confirmation = "#{@confirmation}<p> We are glad to see you are interested in our service</p>"
  @confirmation = "#{@confirmation}<p> One of our staff will look over your information and send you a link with some information about applying</p>"
  
mandrill = Mandrill::API.new ENV['MANDRILL_APIKEY']
 message = {to: [{"type"  =>"to",
                  "email" =>"#{@email_addr}",
                  "name"  =>"#{@username}" }],
            subject: "confirmation email for Co-Op Canines",
            from_email: 'middlemissj.usa@gmail.com',
            html: "#{@confirmation}" 
           }

puts mandrill.messages.send message
  @stylesheet = "style/contact.css"
  erb :contact
end

get '/testimonial' do
  @stylesheet = 'style/testimonials.css'
  erb :testimonal  

end


# CONFLICTING MESSAGES
#second line of merge conflict
