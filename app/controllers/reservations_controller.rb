class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      ReservationMailer.send_reservation_mail(@reservation).deliver
      redirect_to(@reservation, :notice => 'Réservation Envoyée !')
    else
      render :action => new
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:name, :mail, :phone, :pax, :date, :time, :message)
end
