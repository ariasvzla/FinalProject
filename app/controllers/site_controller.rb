class SiteController < ApplicationController
before_action :authenticate_user!, :except => [:home, :aboutus, :contactus, :airlineprofile, :adminpage, :hotelprofile, :partner]
 before_action :authenticate_hoteladmin!, :except => [:home, :aboutus, :contactus, :bookingpage, :airlineprofile, :adminpage, :partner]
 before_action :authenticate_flightadmin!, :except => [:home, :aboutus, :contactus, :bookingpage, :adminpage, :hotelprofile,:partner]
  def home
  end


  def adminprofile
  end

  def bookingpage
    @hotel= Hotels.all
  end

  def aboutus
  end

  def contactus
  end

  def hotelprofile
  end


  def airlineprofile
  end

  def adminpage
  end
  def partner
  end

end
