#static_controller.rb
#contains pages that will not change and will stay the samw
    ##about page
    ##contact_page
class StaticController < ApplicationController

    def about 
        render 'about'
    end 
end
