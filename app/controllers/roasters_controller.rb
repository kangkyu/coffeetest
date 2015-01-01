class RoastersController < ApplicationController
  def go_random
    yml_file_path = Rails.root.join("lib","tasks","roasters","roasters.yml")
    redirect_to YAML.load_file(yml_file_path).sample["url"]
  end

  def show_random_screen
    yml_file_path = Rails.root.join("lib/tasks/roasters/roasters.yml")
    @screen = YAML.load_file(yml_file_path).sample
    @screens = YAML.load_file(yml_file_path).sample(8)
  end

  def capture
    yml_file_path = Rails.root.join("lib/tasks/roasters/roasters.yml")
    @screens = YAML.load_file(yml_file_path)
  end
end