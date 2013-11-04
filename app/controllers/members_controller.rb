class MembersController < ApplicationController

def index
  @members = Member.all
end

def member_index
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
  m.save
  redirect_to members_url
end




def show
  @members = Member.all
  member_id = params["id"].to_i
  @player = Member.find_by(id: member_id)
end

def destroy
member = Member.all.find_by(id: params[:id])
member.destroy
redirect_to root_url
end

def edit
  @members = Member.all
  @member = @members.find_by(id: params[:id])
end

def update
end

def photo
  @members = Member.all
  @member = @members.find_by(id: params[:id])
end

def update_photo
end

def upload
  uploaded_io = params[:id][:photo]
  File.open(Rails.root.join('assets', 'images', uploaded_io.original_filename), 'wb') do|file|
    file.write(uploaded_io.read)
  end
end





end
