class WelcomeController < ApplicationController
	def index
		render
	end

	def join
		render
	end

	def resources
	  @title = "BikeShare Resources"
    @localTrails = "https://binghamtonbikeshare.files.wordpress.com/2014/11/bikemap_2011_fwv-small.pdf"
    @fitnessTrails = "https://binghamtonbikeshare.files.wordpress.com/2014/11/fitnesstrailsmap1bu.pdf"
    @twoRiverTrails = "https://binghamtonbikeshare.files.wordpress.com/2014/11/gbgmaps.pdf"
    @bikeCoalition = "http://nybc.net/"
    @bingTransport = "http://www.bmtsonline.com/"
    @bikeMaintanence = "http://vimeo.com/21928126"
    @bikeShop = "https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=0CB8QFjAA&url=http%3A%2F%2Fwww.chenangopoint.com%2F&ei=LrVjVJ-0F7bGsQT2rYKYCA&usg=AFQjCNEYNSBt_S_urwnclJ9EAE030FACuQ&bvm=bv.79189006,d.cWc"
    @stonybrookBikeShare = "http://www.stonybrook.edu/sustainability/biking-at-stony-brook/wolf-ride-bike-share.shtml"
    @cornellBikeShare = "http://bigredbikes.cornell.edu/"
    @ithacaBikeShare = "http://www.ithaca.edu/orgs/bbikes/about/"
	end

	def contact_us
		render
	end

  def bike_shop
    render
  end

  def how_it_works
    render
  end
end