class BuildsController < ApplicationController

  get '/builds/new' do
    erb :'builds/new'
  end

  post '/builds' do
    if params[:title] != ""
      @build = Build.create(params)
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

  get '/builds/:id/edit' do
    @build = Build.find(params[:id])
    erb :'builds/edit'
  end

  patch '/builds/:id' do
    @build = Build.find(params[:id])
    if params[:build][:title] != ""
      @build.update(params[:build])
      redirect "/builds/#{params[:id]}"
    else
      @error = "Please submit title and specs."
      erb :'builds/edit'
    end
  end


end
