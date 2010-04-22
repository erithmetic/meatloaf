require "meatloaf_core"
require "meatloaf_more"
require "rails"  # not sure why blog was suggesting rails come last 

module MeatloafMore
  class Engine < Rails::Engine   
    #engine_name :meatloaf_core 
  end
end