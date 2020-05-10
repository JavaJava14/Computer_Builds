class BuildsController < ApplicationController
  get '/builds' do
    @builds = Build.all
    erb :'builds/index'
  end

  get '/builds/:id' do
    @build = Build.find(params[:id])
    erb :'builds/show'
  end
end
