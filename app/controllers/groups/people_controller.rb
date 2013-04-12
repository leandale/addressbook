class Groups::PeopleController < ApplicationController
  # GET groups/1/people
  # GET groups/1/people.json
  def index
    @group = Group.find(params[:id])
    @people = @group.people

    respond_to do |format|
      format.json { render json: @people }
    end
  end

  # GET groups/1/people/1
  # GET groups/1/people/1.json
  def show
    @group = Group.find(params[:id])
    @person = @group.people.find(params[:person_id])

    respond_to do |format|
      format.json { render json: @person }
    end
  end

  # POST groups/1/people
  # POST groups/1/people.json
  def create
    @group = Group.find(params[:id])
    @person = Person.find(params[:person_id])

    @group.people << @person

    respond_to do |format|
      if @group.save
        format.json { render json: @group, status: :created, location: @group }
      else
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE groups/1/people/1
  # DELETE groups/1/people/1.json
  def destroy
    @group = Group.find(params[:id])
    @person = @group.people.find(params[:person_id])
    @group.people.delete @person
    @group.save!

    respond_to do |format|
      format.json { head :no_content }
    end
  end
end
