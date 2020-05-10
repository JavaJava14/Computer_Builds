class BuildsController < ApplicationController
  get '/builds' do
    @builds = Build.all
    erb :'builds/index'
  end
end
