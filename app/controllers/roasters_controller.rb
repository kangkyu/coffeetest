class RoastersController < ApplicationController
  def go_random
    urls = [
      'http://wildgoosecoffee.com/',
      'http://www.groundworkcoffee.com/',
      'http://www.thebestcoffee.com/',
      'http://www.jamesonbrown.com/',
      'http://www.portolacoffeelab.com/',
      'http://barninela.com/',
      'http://10speedcoffee.com/',
      'http://liftcoffeeroasters.com/',
      'http://truebeans.com/',
      'http://lordwindsor.com/',
      'http://www.roseparkroasters.com/'
    ]
    redirect_to urls[rand(urls.length)]
  end
end