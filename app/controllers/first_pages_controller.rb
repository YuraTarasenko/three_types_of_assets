class FirstPagesController < ApplicationController
  def index
    houses = House.all
    complex_buildings = ComplexBuilding.all
    commecial_units = CommecialUnit.all

    @subjects = (houses + complex_buildings + commecial_units).sort {|x,y| y[:created_at] <=> x[:created_at]}
  end

  def buy
    if params[:email]
      OrderMailer.with(order: params[:name].constantize.find(params[:id]), email: params[:email] ).new_order_email.deliver_later
      VeryLongTask.new.perform
    end

    redirect_to root_path
  end
end
