class App < Sinatra::Base
  set :root, File.dirname(__FILE__)

  register Sinatra::AssetPack

  assets do
    serve "/js", from: "assets/javascripts"
    serve "/css", from: "assets/stylesheets"

    js :application,  [
      "/js/*.js"
    ]

    css :application, [
      "/css/*.css"
    ]

    css_compression :sass
  end

  get "/" do
    slim :index
  end
end
