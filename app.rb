require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

get("/") do
  erb(:omnicalc3)
end

get("/umbrella") do
  erb(:umbrella)
end

get("/umbrella_submit") do
  erb(:umbrella_submit)
end

get("/ai_message") do
  erb(:ai_message)
end

get("/ai_chat") do
  erb(:ai_chat)
end
