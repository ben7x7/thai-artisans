class ReservationMailer < ApplicationMailer

  def send_reservation_mail(booking)
    @booking = booking
    mail(to: 'contact@thai-artisans.ch',
        from: 'contact@thai-artisans.ch',
        subject: 'Thai-Artisans Reservation')
  end

end
