class CitizensController < ApplicationController
  def register
    @citizen = Citizen.new
  end

  def create
    @citizen = Citizen.new(citizen_params)
    if @citizen.save
      redirect_to new_citizen_appointment_path(@citizen)
    else
      render :new
    end
  end

  def signin
    @citizen = Citizen.new
  end

  def authenticate
    @citizen = Citizen.where(email: params[:citizen][:email])
    if @citizen.password == params[:citizen][:password]
      redirect_to new_citizen_appointment_path(@citizen)
    else
      render :signin
    end
  end

  def edit
  end

  def update
  end

  private

  def citizen_params
    params.require(:citizen).permit(:email, :password, :postal_code, :nric)
  end

end
