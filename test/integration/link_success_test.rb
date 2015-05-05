require 'test_helper'
require 'mechanize'

class LinkSuccessTest < ActionDispatch::IntegrationTest

  def setup
    yml_file_path = Rails.root.join("lib/tasks/roasters/roasters.yml")
    @roasters = YAML.load_file(yml_file_path)
  end

  def test_links_success
    agent = Mechanize.new
    @roasters.each do |roaster|
      assert_nothing_raised { agent.get(roaster["url"]) }
    end
  end
end
