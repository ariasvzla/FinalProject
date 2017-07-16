class SiteController < ApplicationController
before_action :authenticate_user!, :except => [:home, :aboutus, :contactus, :airlineprofile, :adminpage, :hotelprofile]
 before_action :authenticate_hoteladmin!, :except => [:home, :aboutus, :contactus, :bookingpage, :airlineprofile, :adminpage]
 before_action :authenticate_flightadmin!, :except => [:home, :aboutus, :contactus, :bookingpage, :adminpage, :hotelprofile]
  def home
  end


  def adminprofile
  end

  def bookingpage
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

end
