class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      ReservationMailer.send_reservation_mail(@booking).deliver
      redirect_to(@booking, :notice => 'Réservation Envoyée !')
    else
      render :action => new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:name, :email, :phone, :pax, :date, :time, :message)
end
