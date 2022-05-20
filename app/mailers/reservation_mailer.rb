class ReservationMailer < ApplicationMailer

  def send_reservation_mail(reservation)
    @reservation = reservation
    mail( :to => contact@thai-artisans.ch,
          :from => @reservation.mail,
          :subject => 'Thai-Artisans Reservation')
  end
end
