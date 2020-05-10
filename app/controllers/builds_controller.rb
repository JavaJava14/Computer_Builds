class BuildsController < ApplicationController

  get '/builds/new' do
    erb :'/builds/new'
  end

  get '/builds' do
    @builds = Build.all
    erb :'builds/index'
  end

  get '/builds/:id' do
    @build = Build.find(params[:id])
    erb :'builds/show'
  end
end
