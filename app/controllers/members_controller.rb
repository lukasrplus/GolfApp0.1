class MembersController < ApplicationController

  def index

    @members = Member.all

  end


def new
   @members = Member.all
end

def create
  m = Member.new
  m.firstname = params[:firstname]
  m.secondname = params[:secondname]
  m.HCP = params[:HCP]
  m.club = params[:club]
  m.brand = params[:brand]
  m.photo = params[:photo]
  m.save
  redirect_to members_url
end






  def show

    @members = Member.all

    member_id = params["id"].to_i

    @player = Member.find_by(id: member_id)
  end


end
