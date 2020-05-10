class BuildsController < ApplicationController
  get '/builds' do
    erb :'builds/index'
  end
end