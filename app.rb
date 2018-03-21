require 'sinatra'

configure do
  set :name, "Dev"
  set(:digi){ rand(10) }
end

helpers do
  #This is for inline helpers methods.
end

before do
  # code runs before each request
  # can create instance variables
end

after do
  # runs after every request
  # can modify the response
  # has access to any instance variables
end

get '/:name' do
  @name = params[:name]
  erb :howdy
end

__END__
@@howdy
<h1> Howdy <%= @name %>!</h1>



