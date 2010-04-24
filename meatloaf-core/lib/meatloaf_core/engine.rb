require "meatloaf_core"
require "rails"   

module MeatloafCore
  class Engine < Rails::Engine   
    #engine_name :meatloaf_core
    
    initializer "meatloaf_core.configure_rails_initialization" do |app|
      #app.config.middleware.use ContentPlus
    end     
  end
end