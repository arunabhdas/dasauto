require "dasauto/version"
require "dasauto/baseband"

module Dasauto
  def self.dasautoweb(n = "DefaultName")
    
    baseband = Baseband
    Baseband.dasautoweb(n)
  end

  def self.dasautoandroid(n = "DefaultName")
    
    baseband = Baseband
    Baseband.dasautoandroid(n)
  end


  def self.dasautoios(n = "DefaultName")
    
    baseband = Baseband
    Baseband.dasautoios(n)
  end

end