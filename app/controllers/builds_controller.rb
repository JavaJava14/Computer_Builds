class BuildsController < ApplicationController

  get '/builds/new' do
    erb :'builds/new'
  end

  post '/builds' do
    build = Build.new(params)
    if params[:title] != ""
      build.save
      redirect '/builds'
    else
      @error = "Please submit title and specs."
      erb :'builds/new'
    end
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
