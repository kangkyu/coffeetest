class RoastersController < ApplicationController
  def go_random
    yml_file_path = Rails.root.join("lib","tasks","roasters","urls.yml")
    redirect_to YAML.load_file(yml_file_path).sample
  end

  def show_random_screen
    yml_file_path = Rails.root.join("lib","tasks","roasters","urls.yml")
    @screen = YAML.load_file(yml_file_path).sample

    # render text: "
    # <head><style>h1 {font-family:verdana}</style></head>
    # <body><h1><%= @screen %></h1></body>
    # "
  end
end