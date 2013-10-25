class MembersController < ApplicationController

  def index

    @members = Member.all

  end

  def show


    @members = Member.all

    member_id = params["id"].to_i

    @player = Member.find_by_id(member_id)


  end


end
