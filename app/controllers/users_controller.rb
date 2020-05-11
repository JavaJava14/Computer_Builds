class UsersController < ApplicationController

    get '/register' do
      erb :'/users/register'
    end

    post '/register' do
      user = User.new(params)
      if user.username.empty? || user.password.empty?
        @error = "Username and password can't be blank"
        erb :'users/register'
      elsif User.find_by(username: user.username)
        @error = "Account with that username already exists"
        erb :'users/register'
      else
        user.save
        session[:user_id] = user.id
        redirect '/builds'
      end

    end

end