class ReservationMailer < ApplicationMailer

  def send_reservation_mail(booking)
    @booking = booking
    mail( :to => contact@thai-artisans.ch,
          :from => @booking.email,
          :subject => 'Thai-Artisans Reservation')
  end
end
