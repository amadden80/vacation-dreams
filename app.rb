require 'bundler'
Bundler.require()


# * Connection *
ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'rest_vacation_application'
)


# * Models *
require './models/vacation'


# * Routes *
get '/' do
  "This is a vacation RESTful api.."
end



get '/api/vacations' do
  content_type :json
  Vacation.all.to_json
end

get '/api/vacations/:id' do
  content_type :json
  Vacation.find(params[:id].to_i).to_json
end

post '/api/vacations' do
  content_type :json
  Vacation.create(params[:vacation]).to_json
end


put '/api/vacations/:id' do
  content_type :json
  vacation = Vacation.find(params[:id].to_i)
  vacation.update(params[:vacation])
  vacation.to_json
end

patch '/api/vacations/:id' do
  content_type :json
  vacation = Vacation.find(params[:id].to_i)
  vacation.update(params[:vacation])
  vacation.to_json
end


delete '/api/vacations/:id' do
  content_type :json
  vacation = Vacation.delete(params[:id].to_i)
  {message: 'No Vacation No Mo'}.to_json
end
