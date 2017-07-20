require "bundler/setup"
Bundler.require
# Tilt.register Tilt::ERBTemplate, "html.erb"

get "/" do
  erb :"index.html", layout: :"layout.html"
end

get "/about" do
  erb :"about.html", layout: :"layout.html"
end

get "/trello" do
  items = [
    {name: "Learn variable", done: true},
    {name: "Learn name", done: true},
    {name: "Learn string", done: false},
    {name: "Learn array", done: true},
    {name: "Learn method", done: false},
    {name: "Learn hash", done: true},
    {name: "Learn sinatra", done: false},
    {name: "Learn gem", done: false}
  ]
  erb :"trello.html", layout: :"layout.html", locals: {items: items}
end


