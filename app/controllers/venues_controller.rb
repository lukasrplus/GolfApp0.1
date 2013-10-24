class VenuesController < ApplicationController

def index

 @members = Member.all

 @courses = Course.all

end



end
