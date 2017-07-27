require "./web25-page/*"
require "kemal"
require "kilt/slang"

module Web25::Page
  
    macro color(color_scheme) 
        color = {{color_scheme}}::PRIMARY
        color_active = {{color_scheme}}::ACTIVE
        color_hover = {{color_scheme}}::HOVER
    end
    
    get "/" do |env|
        version = Web25::Page::VERSION
        color Web25::Page::Colors::Main
        render "src/views/index.slang"
    end

    get "/manifest" do |env|
        color Web25::Page::Colors::Manifest
        render "src/views/manifest.slang"
    end
   
    Kemal.run
end
