require 'sinatra'
require 'pony'

post '/contact' do
  message = params[:message]
  name = message[:name]
  email = message[:email]
  body = params[:body]

  Pony.mail(:to => 'jessica@maru-creative.com', :from => email, :subject => 'Website inquiry from' + name, :body => body)
  File.read(File.join('public', 'contact-thanks.html'))
end

get '/' do
  File.read(File.join('public', 'index.html'))
end
